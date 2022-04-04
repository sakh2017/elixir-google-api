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

defmodule GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryDevice do
  @moduledoc """
  Telemetry data collected from a managed device.

  ## Attributes

  *   `audioStatusReport` (*type:* `list(GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1AudioStatusReport.t)`, *default:* `nil`) - Output only. Audio reports collected periodically.
  *   `batteryInfo` (*type:* `list(GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1BatteryInfo.t)`, *default:* `nil`) - Output only. Information on battery specs for the device.
  *   `batteryStatusReport` (*type:* `list(GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1BatteryStatusReport.t)`, *default:* `nil`) - Output only. Battery reports collected periodically.
  *   `cpuInfo` (*type:* `list(GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1CpuInfo.t)`, *default:* `nil`) - Output only. Information regarding CPU specs for the device.
  *   `cpuStatusReport` (*type:* `list(GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1CpuStatusReport.t)`, *default:* `nil`) - Output only. CPU status reports collected periodically.
  *   `customer` (*type:* `String.t`, *default:* `nil`) - Output only. Google Workspace Customer whose enterprise enrolled the device.
  *   `deviceId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique Directory API ID of the device. This value is the same as the Admin Console's Directory API ID in the Chrome OS Devices tab
  *   `graphicsInfo` (*type:* `GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1GraphicsInfo.t`, *default:* `nil`) - Output only. Contains information regarding Graphic peripherals for the device.
  *   `graphicsStatusReport` (*type:* `list(GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1GraphicsStatusReport.t)`, *default:* `nil`) - Output only. Graphics reports collected periodically.
  *   `memoryInfo` (*type:* `GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1MemoryInfo.t`, *default:* `nil`) - Output only. Information regarding memory specs for the device.
  *   `memoryStatusReport` (*type:* `list(GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1MemoryStatusReport.t)`, *default:* `nil`) - Output only. Memory status reports collected periodically.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name of the device.
  *   `networkStatusReport` (*type:* `list(GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1NetworkStatusReport.t)`, *default:* `nil`) - Output only. Network specs collected periodically.
  *   `orgUnitId` (*type:* `String.t`, *default:* `nil`) - Output only. Organization unit ID of the device.
  *   `osUpdateStatus` (*type:* `list(GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1OsUpdateStatus.t)`, *default:* `nil`) - Output only. Contains relevant information regarding ChromeOS update status.
  *   `serialNumber` (*type:* `String.t`, *default:* `nil`) - Output only. Device serial number. This value is the same as the Admin Console's Serial Number in the Chrome OS Devices tab.
  *   `storageInfo` (*type:* `GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1StorageInfo.t`, *default:* `nil`) - Output only. Information of storage specs for the device.
  *   `storageStatusReport` (*type:* `list(GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1StorageStatusReport.t)`, *default:* `nil`) - Output only. Storage reports collected periodically.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :audioStatusReport =>
            list(
              GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1AudioStatusReport.t()
            )
            | nil,
          :batteryInfo =>
            list(GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1BatteryInfo.t())
            | nil,
          :batteryStatusReport =>
            list(
              GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1BatteryStatusReport.t()
            )
            | nil,
          :cpuInfo =>
            list(GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1CpuInfo.t()) | nil,
          :cpuStatusReport =>
            list(GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1CpuStatusReport.t())
            | nil,
          :customer => String.t() | nil,
          :deviceId => String.t() | nil,
          :graphicsInfo =>
            GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1GraphicsInfo.t() | nil,
          :graphicsStatusReport =>
            list(
              GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1GraphicsStatusReport.t()
            )
            | nil,
          :memoryInfo =>
            GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1MemoryInfo.t() | nil,
          :memoryStatusReport =>
            list(
              GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1MemoryStatusReport.t()
            )
            | nil,
          :name => String.t() | nil,
          :networkStatusReport =>
            list(
              GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1NetworkStatusReport.t()
            )
            | nil,
          :orgUnitId => String.t() | nil,
          :osUpdateStatus =>
            list(GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1OsUpdateStatus.t())
            | nil,
          :serialNumber => String.t() | nil,
          :storageInfo =>
            GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1StorageInfo.t() | nil,
          :storageStatusReport =>
            list(
              GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1StorageStatusReport.t()
            )
            | nil
        }

  field(:audioStatusReport,
    as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1AudioStatusReport,
    type: :list
  )

  field(:batteryInfo,
    as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1BatteryInfo,
    type: :list
  )

  field(:batteryStatusReport,
    as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1BatteryStatusReport,
    type: :list
  )

  field(:cpuInfo,
    as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1CpuInfo,
    type: :list
  )

  field(:cpuStatusReport,
    as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1CpuStatusReport,
    type: :list
  )

  field(:customer)
  field(:deviceId)

  field(:graphicsInfo,
    as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1GraphicsInfo
  )

  field(:graphicsStatusReport,
    as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1GraphicsStatusReport,
    type: :list
  )

  field(:memoryInfo, as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1MemoryInfo)

  field(:memoryStatusReport,
    as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1MemoryStatusReport,
    type: :list
  )

  field(:name)

  field(:networkStatusReport,
    as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1NetworkStatusReport,
    type: :list
  )

  field(:orgUnitId)

  field(:osUpdateStatus,
    as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1OsUpdateStatus,
    type: :list
  )

  field(:serialNumber)
  field(:storageInfo, as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1StorageInfo)

  field(:storageStatusReport,
    as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1StorageStatusReport,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryDevice do
  def decode(value, options) do
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryDevice.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryDevice do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
