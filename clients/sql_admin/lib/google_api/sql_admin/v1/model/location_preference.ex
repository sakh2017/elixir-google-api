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

defmodule GoogleApi.SQLAdmin.V1.Model.LocationPreference do
  @moduledoc """
  Preferred location. This specifies where a Cloud SQL instance is located. Note that if the preferred location is not available, the instance will be located as close as possible within the region. Only one location may be specified.

  ## Attributes

  *   `followGaeApplication` (*type:* `String.t`, *default:* `nil`) - The App Engine application to follow, it must be in the same region as the Cloud SQL instance. WARNING: Changing this might restart the instance.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - This is always `sql#locationPreference`.
  *   `secondaryZone` (*type:* `String.t`, *default:* `nil`) - The preferred Compute Engine zone for the secondary/failover (for example: us-central1-a, us-central1-b, etc.). Reserved for future use.
  *   `zone` (*type:* `String.t`, *default:* `nil`) - The preferred Compute Engine zone (for example: us-central1-a, us-central1-b, etc.). WARNING: Changing this might restart the instance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :followGaeApplication => String.t() | nil,
          :kind => String.t() | nil,
          :secondaryZone => String.t() | nil,
          :zone => String.t() | nil
        }

  field(:followGaeApplication)
  field(:kind)
  field(:secondaryZone)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1.Model.LocationPreference do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1.Model.LocationPreference.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1.Model.LocationPreference do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
