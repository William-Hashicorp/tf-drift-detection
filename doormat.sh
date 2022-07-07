export TFH_name=tf-drift-detection
export TFH_org=William-Hashicorp
doormat --refresh
account=$(doormat aws --list | grep arn | awk -F':' '{print $5}')
eval $(doormat aws --account ${account})
doormat aws --account ${account} \
  --tf-push --tf-workspace ${TFH_name} \
  --tf-organization ${TFH_org}

