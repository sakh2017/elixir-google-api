# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.SQLAdmin.V1.Model.MySqlReplicaConfiguration do
  @moduledoc """
  Read-replica configuration specific to MySQL databases.

  ## Attributes

  *   `caCertificate` (*type:* `String.t`, *default:* `nil`) - PEM representation of the trusted CA's x509 certificate.
  *   `clientCertificate` (*type:* `String.t`, *default:* `nil`) - PEM representation of the replica's x509 certificate.
  *   `clientKey` (*type:* `String.t`, *default:* `nil`) - PEM representation of the replica's private key. The corresponsing public key is encoded in the client's certificate.
  *   `connectRetryInterval` (*type:* `integer()`, *default:* `nil`) - Seconds to wait between connect retries. MySQL's default is 60 seconds.
  *   `dumpFilePath` (*type:* `String.t`, *default:* `nil`) - Path to a SQL dump file in Google Cloud Storage from which the replica instance is to be created. The URI is in the form gs://bucketName/fileName. Compressed gzip files (.gz) are also supported. Dumps have the binlog co-ordinates from which replication begins. This can be accomplished by setting --master-data to 1 when using mysqldump.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - This is always `sql#mysqlReplicaConfiguration`.
  *   `masterHeartbeatPeriod` (*type:* `String.t`, *default:* `nil`) - Interval in milliseconds between replication heartbeats.
  *   `password` (*type:* `String.t`, *default:* `nil`) - The password for the replication connection.
  *   `sslCipher` (*type:* `String.t`, *default:* `nil`) - A list of permissible ciphers to use for SSL encryption.
  *   `username` (*type:* `String.t`, *default:* `nil`) - The username for the replication connection.
  *   `verifyServerCertificate` (*type:* `boolean()`, *default:* `nil`) - Whether or not to check the primary instance's Common Name value in the certificate that it sends during the SSL handshake.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :caCertificate => String.t() | nil,
          :clientCertificate => String.t() | nil,
          :clientKey => String.t() | nil,
          :connectRetryInterval => integer() | nil,
          :dumpFilePath => String.t() | nil,
          :kind => String.t() | nil,
          :masterHeartbeatPeriod => String.t() | nil,
          :password => String.t() | nil,
          :sslCipher => String.t() | nil,
          :username => String.t() | nil,
          :verifyServerCertificate => boolean() | nil
        }

  field(:caCertificate)
  field(:clientCertificate)
  field(:clientKey)
  field(:connectRetryInterval)
  field(:dumpFilePath)
  field(:kind)
  field(:masterHeartbeatPeriod)
  field(:password)
  field(:sslCipher)
  field(:username)
  field(:verifyServerCertificate)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1.Model.MySqlReplicaConfiguration do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1.Model.MySqlReplicaConfiguration.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1.Model.MySqlReplicaConfiguration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
