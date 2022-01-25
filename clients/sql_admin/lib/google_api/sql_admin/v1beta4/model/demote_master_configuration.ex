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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.DemoteMasterConfiguration do
  @moduledoc """
  Read-replica configuration for connecting to the on-premises primary instance.

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `nil`) - This is always `sql#demoteMasterConfiguration`.
  *   `mysqlReplicaConfiguration` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.DemoteMasterMySqlReplicaConfiguration.t`, *default:* `nil`) - MySQL specific configuration when replicating from a MySQL on-premises primary instance. Replication configuration information such as the username, password, certificates, and keys are not stored in the instance metadata. The configuration information is used only to set up the replication connection and is stored by MySQL in a file named `master.info` in the data directory.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t() | nil,
          :mysqlReplicaConfiguration =>
            GoogleApi.SQLAdmin.V1beta4.Model.DemoteMasterMySqlReplicaConfiguration.t() | nil
        }

  field(:kind)

  field(:mysqlReplicaConfiguration,
    as: GoogleApi.SQLAdmin.V1beta4.Model.DemoteMasterMySqlReplicaConfiguration
  )
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.DemoteMasterConfiguration do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.DemoteMasterConfiguration.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.DemoteMasterConfiguration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
