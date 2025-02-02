package cmd

type ClusterConfig struct {
	clusterName string
	clusterEndpoint string
	base64CertificateAuthorityData string
}

var cluster1 = ClusterConfig{
			clusterName: "nonprod-us-east-2",
			clusterEndpoint: "{{ op://cohorts/six-platform-nonprod-us-east-2/cluster-endpoint }}",
			base64CertificateAuthorityData: "{{ op://cohorts/six-platform-nonprod-us-east-2/base64-certificate-authority-data }}",
		}

var clusters = []ClusterConfig{ cluster1 }

const (
	LoginClientId		 			= "{{ op://cohorts/six-svc-auth0/twdpsio-dpsctl-client-id}}"
	LoginScope                      = "openid offline_access profile email"
	LoginAudience                   = ""

	IdpIssuerUrl				    = "https://six-twdpsio.us.auth0.com/"

	ConfigEnvDefault                = "DPSCTL"
	ConfigFileDefaultName           = "config"
	ConfigFileDefaultType           = "yaml"
	ConfigFileDefaultLocation       = "/.dpsctl" // path will begin with $HOME dir
	ConfigFileDefaultLocationMsg    = "config file (default is $HOME/.dpsctl/config.yaml)"

	DefaultCluster                  = "nonprod-us-east-2"
	TeamsApi                        = "http://localhost:8000"
)
