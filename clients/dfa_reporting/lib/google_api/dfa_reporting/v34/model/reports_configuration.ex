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

defmodule GoogleApi.DFAReporting.V34.Model.ReportsConfiguration do
  @moduledoc """
  Reporting Configuration

  ## Attributes

  *   `exposureToConversionEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether the exposure to conversion report is enabled. This report shows detailed pathway information on up to 10 of the most recent ad exposures seen by a user before converting.
  *   `lookbackConfiguration` (*type:* `GoogleApi.DFAReporting.V34.Model.LookbackConfiguration.t`, *default:* `nil`) - Default lookback windows for new advertisers in this account.
  *   `reportGenerationTimeZoneId` (*type:* `String.t`, *default:* `nil`) - Report generation time zone ID of this account. This is a required field that can only be changed by a superuser. Acceptable values are: - "1" for "America/New_York" - "2" for "Europe/London" - "3" for "Europe/Paris" - "4" for "Africa/Johannesburg" - "5" for "Asia/Jerusalem" - "6" for "Asia/Shanghai" - "7" for "Asia/Hong_Kong" - "8" for "Asia/Tokyo" - "9" for "Australia/Sydney" - "10" for "Asia/Dubai" - "11" for "America/Los_Angeles" - "12" for "Pacific/Auckland" - "13" for "America/Sao_Paulo" - "16" for "America/Asuncion" - "17" for "America/Chicago" - "18" for "America/Denver" - "19" for "America/St_Johns" - "20" for "Asia/Dhaka" - "21" for "Asia/Jakarta" - "22" for "Asia/Kabul" - "23" for "Asia/Karachi" - "24" for "Asia/Calcutta" - "25" for "Asia/Pyongyang" - "26" for "Asia/Rangoon" - "27" for "Atlantic/Cape_Verde" - "28" for "Atlantic/South_Georgia" - "29" for "Australia/Adelaide" - "30" for "Australia/Lord_Howe" - "31" for "Europe/Moscow" - "32" for "Pacific/Kiritimati" - "35" for "Pacific/Norfolk" - "36" for "Pacific/Tongatapu" 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :exposureToConversionEnabled => boolean(),
          :lookbackConfiguration => GoogleApi.DFAReporting.V34.Model.LookbackConfiguration.t(),
          :reportGenerationTimeZoneId => String.t()
        }

  field(:exposureToConversionEnabled)
  field(:lookbackConfiguration, as: GoogleApi.DFAReporting.V34.Model.LookbackConfiguration)
  field(:reportGenerationTimeZoneId)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V34.Model.ReportsConfiguration do
  def decode(value, options) do
    GoogleApi.DFAReporting.V34.Model.ReportsConfiguration.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V34.Model.ReportsConfiguration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
