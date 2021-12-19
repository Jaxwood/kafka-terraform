package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestEnvironmentCreation(t *testing.T) {
	t.Parallel()

	// arrange
	expectedEnv := "test-env"
	expectedCluster := "test-cluster"
	expectedSA := "test-sa"

	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "..",
		Vars: map[string]interface{}{
				"env-name": expectedEnv,
				"cluster-name": expectedCluster,
				"sa-name": expectedSA,
			},
		NoColor: true,
	})

	// act
	defer terraform.Destroy(t, terraformOptions)
	terraform.InitAndApply(t, terraformOptions)

	// assert
	actualEnv := terraform.Output(t, terraformOptions, "environment_name")
	actualCluster := terraform.Output(t, terraformOptions, "cluster_name")
	actualSA := terraform.Output(t, terraformOptions, "sa_name")
	assert.Equal(t, expectedEnv, actualEnv)
	assert.Equal(t, expectedCluster, actualCluster)
	assert.Equal(t, expectedSA, actualSA)
}
