trigger AccountAfterDelete on Account (after delete) {
	Contact a = [Select id from contact limit 1];
	Contact b1 = [Select id from contact limit 1];
}