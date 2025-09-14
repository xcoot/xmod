.class public abstract Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final EVENT_MAP:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/16 v0, 0x74

    .line 1
    new-array v0, v0, [Ljava/util/Map$Entry;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3
    const-string v3, "Admin %d has added a certificate to the untrusted DB. Subject : %s, Issuer : %s"

    .line 4
    const-string v4, "CertificatePolicy"

    const/4 v5, 0x1

    .line 5
    invoke-static {v5, v2, v3, v4}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 6
    aput-object v2, v0, v1

    .line 7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Admin %d has removed a certificate from the untrusted DB. Subject : %s, Issuer : %s"

    .line 8
    invoke-static {v5, v2, v3, v4}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 9
    aput-object v2, v0, v5

    const/4 v2, 0x2

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x5

    const/4 v8, 0x0

    .line 11
    const-string v9, "Enabling Wifi"

    const-string v10, "WifiPolicy"

    const/4 v6, 0x1

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v4

    .line 12
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 14
    const-string v9, "Disabling Wifi"

    const-string v10, "WifiPolicy"

    invoke-static/range {v6 .. v11}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v4

    .line 15
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x5

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x2

    .line 17
    const-string v9, "Package %s has been activated as admin."

    const-string v10, "DevicePolicyManager"

    const/4 v6, 0x0

    invoke-static/range {v6 .. v11}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v4

    .line 18
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v0, v4

    .line 19
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 20
    const-string v9, "Package %s has been removed as admin."

    const-string v10, "DevicePolicyManager"

    invoke-static/range {v6 .. v11}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v4

    .line 21
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x6

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Admin %d has added %s to app signature blocklist."

    const-string v6, "ApplicationPolicy"

    .line 23
    invoke-static {v5, v3, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v3

    .line 24
    aput-object v3, v0, v2

    const/4 v2, 0x7

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Admin %d has removed %s from app signature blocklist."

    .line 26
    invoke-static {v5, v3, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v3

    .line 27
    aput-object v3, v0, v2

    const/16 v2, 0x8

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Admin %d has added %s to app signature allowlist."

    .line 29
    invoke-static {v5, v3, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v3

    .line 30
    aput-object v3, v0, v2

    const/16 v2, 0x9

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Admin %d has removed %s from app signature allowlist."

    .line 32
    invoke-static {v5, v3, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v3

    .line 33
    aput-object v3, v0, v2

    const/16 v2, 0xa

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Admin %d has allowed to install application %s"

    .line 35
    invoke-static {v5, v3, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v3

    .line 36
    aput-object v3, v0, v2

    const/16 v2, 0xb

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Admin %d has disallowed to install application %s"

    .line 38
    invoke-static {v5, v3, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v3

    .line 39
    aput-object v3, v0, v2

    const/16 v2, 0xc

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x5

    const/4 v9, 0x0

    .line 41
    const-string v10, "Application %s installation is not allowed by admin %s %s blocklist."

    const-string v11, "ApplicationPolicy"

    const/4 v7, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v4

    .line 42
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xd

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 44
    const-string v10, "Application %s installation is allowed by admin %s %s allowlist."

    const-string v11, "ApplicationPolicy"

    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v4

    .line 45
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x35

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v9, 0x1

    .line 47
    const-string v10, "Application %s installation is not allowed because it is signed by untrusted CA"

    const-string v11, "ApplicationPolicy"

    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v4

    .line 48
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/16 v4, 0xe

    aput-object v3, v0, v4

    .line 49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v9, 0x0

    .line 50
    const-string v10, "Disconnecting from VPN network to server address %s from type %s succeeded"

    const-string v11, "Vpn"

    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v4

    .line 51
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/16 v4, 0xf

    aput-object v3, v0, v4

    .line 52
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 53
    const-string v10, "Connecting to VPN network to server address %s from type %s succeeded"

    const-string v11, "Vpn"

    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v4

    .line 54
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/16 v4, 0x10

    aput-object v3, v0, v4

    .line 55
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 56
    const-string v10, "Connecting to VPN network to server address %s from type %s failed"

    const-string v11, "Vpn"

    const/4 v12, 0x1

    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v4

    .line 57
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/16 v4, 0x11

    aput-object v3, v0, v4

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x3

    .line 59
    const-string v10, "Bind to vpn failed. Could not find package %s"

    const-string v11, "KnoxVpnEngineService"

    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v4

    .line 60
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/16 v4, 0x12

    aput-object v3, v0, v4

    .line 61
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x5

    .line 62
    const-string v10, "Bind to vpn vendor service %s successfully"

    const-string v11, "KnoxVpnEngineService"

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v4

    .line 63
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/16 v4, 0x13

    aput-object v3, v0, v4

    .line 64
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x3

    .line 65
    const-string v10, "Bind to vpn vendor service %s failed"

    const-string v11, "KnoxVpnEngineService"

    const/4 v12, 0x1

    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v4

    .line 66
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/16 v4, 0x14

    aput-object v3, v0, v4

    .line 67
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 68
    const-string v10, "Error occurred while validating profile information for vendor %s"

    const-string v11, "KnoxVpnEngineService"

    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v4

    .line 69
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/16 v4, 0x15

    aput-object v3, v0, v4

    .line 70
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x5

    .line 71
    const-string v10, "Application %s installation is not allowed by admin %s installer blocklist"

    const-string v11, "ApplicationPolicy"

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v4

    .line 72
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/16 v4, 0x16

    aput-object v3, v0, v4

    .line 73
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 74
    const-string v10, "Application %s installation is allowed by admin %s installer allowlist"

    const-string v11, "ApplicationPolicy"

    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v4

    .line 75
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/16 v4, 0x17

    aput-object v3, v0, v4

    .line 76
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 77
    const-string v10, "User Interaction: enabling bluetooth succeeded"

    const-string v11, "BluetoothEnabler"

    const/4 v7, 0x1

    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v4

    .line 78
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/16 v4, 0x18

    aput-object v3, v0, v4

    .line 79
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 80
    const-string v10, "User Interaction: disabling bluetooth succeeded"

    const-string v11, "BluetoothEnabler"

    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v4

    .line 81
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/16 v4, 0x19

    aput-object v3, v0, v4

    .line 82
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 83
    const-string v10, "Setting bluetooth device as discoverable succeeded"

    const-string v11, "AdapterProperties"

    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v4

    .line 84
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/16 v4, 0x1a

    aput-object v3, v0, v4

    .line 85
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 86
    const-string v10, "User Interaction: Discoverable mode status has successfully changed to discoverable"

    const-string v11, "BluetoothSettings"

    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v4

    .line 87
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/16 v4, 0x1b

    aput-object v3, v0, v4

    .line 88
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 89
    const-string v10, "User Interaction: Discoverable mode status has successfully changed to not discoverable"

    const-string v11, "BluetoothSettings"

    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v4

    .line 90
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/16 v4, 0x1c

    aput-object v3, v0, v4

    .line 91
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Admin %d has enabled Bluetooth discoverable state."

    .line 92
    const-string v7, "BluetoothPolicy"

    .line 93
    invoke-static {v5, v3, v4, v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v3

    const/16 v4, 0x1d

    .line 94
    aput-object v3, v0, v4

    .line 95
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Admin %d has disabled Bluetooth discoverable state."

    .line 96
    invoke-static {v5, v3, v4, v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v3

    const/16 v4, 0x1e

    .line 97
    aput-object v3, v0, v4

    const/16 v3, 0x46

    .line 98
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x5

    const/4 v10, 0x0

    .line 99
    const-string v11, "User Interaction: Discoverable mode status has failed to change to discoverable. Reason: MDM policy"

    const-string v12, "BluetoothSettings"

    const/4 v8, 0x1

    const/4 v13, 0x1

    invoke-static/range {v8 .. v13}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v8

    .line 100
    invoke-static {v7, v8}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v7

    const/16 v8, 0x1f

    aput-object v7, v0, v8

    .line 101
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v10, 0x5

    const/4 v11, 0x0

    .line 102
    const-string v12, "Enabling Cellular Data"

    const-string v13, "PhoneInterfaceManager"

    const/4 v9, 0x1

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v7

    .line 103
    invoke-static {v4, v7}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v7, 0x20

    aput-object v4, v0, v7

    .line 104
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x5

    const/4 v10, 0x0

    .line 105
    const-string v11, "Disabling Cellular Data"

    const-string v12, "PhoneInterfaceManager"

    const/4 v8, 0x1

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v8

    .line 106
    invoke-static {v4, v8}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v8, 0x21

    aput-object v4, v0, v8

    .line 107
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "Admin %d has added %s : %s to camera allowlist."

    .line 108
    invoke-static {v5, v4, v7, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v7, 0x22

    .line 109
    aput-object v4, v0, v7

    .line 110
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v8, "Admin %d has removed %s : %s from camera allowlist."

    .line 111
    invoke-static {v5, v4, v8, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v6, 0x23

    .line 112
    aput-object v4, v0, v6

    .line 113
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "Admin %d has allowed camera."

    const-string v7, "RestrictionPolicy"

    .line 114
    invoke-static {v5, v4, v6, v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v6, 0x24

    .line 115
    aput-object v4, v0, v6

    const/16 v4, 0x23

    .line 116
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "Admin %d has disallowed camera."

    .line 117
    invoke-static {v5, v4, v6, v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v6, 0x25

    .line 118
    aput-object v4, v0, v6

    const/16 v4, 0x24

    .line 119
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 120
    const-string v11, "Microphone enabled."

    const-string v12, "AudioPolicyManager"

    const/4 v8, 0x1

    invoke-static/range {v8 .. v13}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v6

    .line 121
    invoke-static {v4, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v6, 0x26

    aput-object v4, v0, v6

    const/16 v4, 0x25

    .line 122
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 123
    const-string v11, "Microphone disabled."

    const-string v12, "AudioPolicyManager"

    invoke-static/range {v8 .. v13}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v6

    .line 124
    invoke-static {v4, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v6, 0x27

    aput-object v4, v0, v6

    const/16 v4, 0x26

    .line 125
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "Admin %d has allowed microphone."

    .line 126
    invoke-static {v5, v4, v6, v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v6, 0x28

    .line 127
    aput-object v4, v0, v6

    const/16 v4, 0x27

    .line 128
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "Admin %d has disallowed microphone."

    .line 129
    invoke-static {v5, v4, v6, v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v6, 0x29

    .line 130
    aput-object v4, v0, v6

    const/16 v4, 0x28

    .line 131
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "Admin %d has started GPS"

    const-string v8, "LocationPolicy"

    .line 132
    invoke-static {v5, v4, v6, v8}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v6, 0x2a

    .line 133
    aput-object v4, v0, v6

    const/16 v4, 0x29

    .line 134
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "Admin %d has stopped GPS"

    const-string v8, "LocationPolicy"

    .line 135
    invoke-static {v5, v4, v6, v8}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v6, 0x2b

    .line 136
    aput-object v4, v0, v6

    const/16 v4, 0x2a

    .line 137
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v10, 0x1

    .line 138
    const-string v11, "Failed to wipe user data (factory reset). Reason: %s"

    const-string v12, "RecoverySystem"

    const/4 v8, 0x1

    const/4 v13, 0x1

    invoke-static/range {v8 .. v13}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v6

    .line 139
    invoke-static {v4, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v6, 0x2c

    aput-object v4, v0, v6

    const/16 v4, 0x2b

    .line 140
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 141
    new-instance v6, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 142
    new-instance v9, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;

    const/4 v8, 0x0

    const-string v10, "Wiping data (factory reset) is not allowed for this user."

    invoke-direct {v9, v10, v8}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;-><init>(Ljava/lang/String;I)V

    .line 143
    new-instance v10, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;

    const/4 v8, 0x0

    const/4 v11, 0x1

    invoke-direct {v10, v8, v11}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;-><init>(Ljava/lang/String;I)V

    .line 144
    new-instance v12, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;

    invoke-direct {v12, v11}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;-><init>(I)V

    .line 145
    new-instance v13, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;

    const/4 v8, 0x5

    invoke-direct {v13, v8}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;-><init>(I)V

    .line 146
    new-instance v14, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;

    invoke-direct {v14, v11}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;-><init>(I)V

    .line 147
    new-instance v15, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;

    invoke-direct {v15, v11}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;-><init>(I)V

    move-object v8, v6

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    .line 148
    invoke-direct/range {v8 .. v14}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;-><init>(Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;)V

    .line 149
    invoke-static {v4, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v6, 0x2d

    aput-object v4, v0, v6

    const/16 v4, 0x2c

    .line 150
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "Admin %d has requested full wipe of device."

    const-string v8, "SecurityPolicy"

    .line 151
    invoke-static {v5, v4, v6, v8}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v6, 0x2e

    .line 152
    aput-object v4, v0, v6

    const/16 v4, 0x2d

    .line 153
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "Admin %d has requested wipe of device external memory."

    .line 154
    invoke-static {v6}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->buildMessage(Ljava/lang/String;)Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;

    move-result-object v9

    .line 155
    new-instance v6, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 156
    new-instance v10, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;

    const-string v8, "SecurityPolicy"

    const/4 v11, 0x0

    invoke-direct {v10, v8, v11}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;-><init>(Ljava/lang/String;I)V

    .line 157
    new-instance v12, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;

    const/4 v8, 0x2

    invoke-direct {v12, v8}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;-><init>(I)V

    .line 158
    new-instance v13, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;

    const/4 v8, 0x5

    invoke-direct {v13, v8}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;-><init>(I)V

    .line 159
    new-instance v14, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;

    const/4 v8, 0x1

    invoke-direct {v14, v8}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;-><init>(I)V

    .line 160
    new-instance v15, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;

    invoke-direct {v15, v11}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;-><init>(I)V

    move-object v8, v6

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    .line 161
    invoke-direct/range {v8 .. v14}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;-><init>(Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;)V

    .line 162
    invoke-static {v4, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v6, 0x2f

    aput-object v4, v0, v6

    const/16 v4, 0x2e

    .line 163
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "Admin %d has locked Workspace."

    const-string v8, "KnoxMUMContainerPolicy"

    .line 164
    invoke-static {v5, v4, v6, v8}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v6, 0x30

    .line 165
    aput-object v4, v0, v6

    const/16 v4, 0x2f

    .line 166
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "Admin %d has unlocked Workspace."

    const-string v8, "KnoxMUMContainerPolicy"

    .line 167
    invoke-static {v5, v4, v6, v8}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v6, 0x31

    .line 168
    aput-object v4, v0, v6

    const/16 v4, 0x30

    .line 169
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "Admin %d has successfully locked Workspace"

    const-string v8, "PasswordPolicy"

    .line 170
    invoke-static {v5, v4, v6, v8}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v6, 0x32

    .line 171
    aput-object v4, v0, v6

    const/16 v4, 0x31

    .line 172
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "Admin %d has successfully unlocked Workspace"

    const-string v8, "PasswordPolicy"

    .line 173
    invoke-static {v5, v4, v6, v8}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v6, 0x33

    .line 174
    aput-object v4, v0, v6

    const/16 v4, 0x32

    .line 175
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "Admin %d has changed lock screen state to enabled"

    .line 176
    invoke-static {v5, v4, v6, v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v6, 0x34

    .line 177
    aput-object v4, v0, v6

    const/16 v4, 0x33

    .line 178
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "Admin %d has changed lock screen state to disabled"

    .line 179
    invoke-static {v5, v4, v6, v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v4

    .line 180
    aput-object v4, v0, v2

    const/16 v2, 0x34

    .line 181
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v9, 0x5

    const/4 v10, 0x1

    .line 182
    const-string v11, "Admin %s has changed screen lock time out to %d"

    const-string v12, "DevicePolicyManager"

    const/4 v8, 0x2

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v4

    .line 183
    invoke-static {v2, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    const/16 v4, 0x36

    aput-object v2, v0, v4

    const/16 v2, 0x36

    .line 184
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v9, 0x3

    const/4 v10, 0x0

    .line 185
    const-string v11, "Application %s (action %s) failed because of signature verification failure"

    const-string v12, "PackageManagerService"

    const/4 v8, 0x0

    const/4 v13, 0x1

    invoke-static/range {v8 .. v13}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v4

    .line 186
    invoke-static {v2, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    const/16 v4, 0x37

    aput-object v2, v0, v4

    const/16 v2, 0x37

    .line 187
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Admin %d has enabled Wifi Tethering setting."

    .line 188
    invoke-static {v5, v2, v4, v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v2

    const/16 v4, 0x38

    .line 189
    aput-object v2, v0, v4

    const/16 v2, 0x38

    .line 190
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Admin %d has disabled Wifi Tethering setting."

    .line 191
    invoke-static {v5, v2, v4, v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v2

    const/16 v4, 0x39

    .line 192
    aput-object v2, v0, v4

    const/16 v2, 0x39

    .line 193
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Admin %d has enabled Wifi Direct."

    .line 194
    invoke-static {v5, v2, v4, v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v2

    const/16 v4, 0x3a

    .line 195
    aput-object v2, v0, v4

    const/16 v2, 0x3a

    .line 196
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Admin %d has disabled Wifi Direct."

    .line 197
    invoke-static {v5, v2, v4, v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v2

    const/16 v4, 0x3b

    .line 198
    aput-object v2, v0, v4

    const/16 v2, 0x3b

    .line 199
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Admin %d has set a new wifi profile: SSID: %s Security type: %s %s %s"

    .line 200
    const-string v6, "WifiPolicy"

    .line 201
    invoke-static {v5, v2, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v2

    const/16 v4, 0x3c

    .line 202
    aput-object v2, v0, v4

    const/16 v2, 0x3c

    .line 203
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Admin %d has allowed access to Wifi SSID: %s"

    .line 204
    invoke-static {v5, v2, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v2

    const/16 v4, 0x3d

    .line 205
    aput-object v2, v0, v4

    const/16 v2, 0x3d

    .line 206
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Admin %d has changed Wifi allowed to %s"

    .line 207
    invoke-static {v5, v2, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v2

    const/16 v4, 0x3e

    .line 208
    aput-object v2, v0, v4

    const/16 v2, 0x44

    .line 209
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Admin %d has changed Wifi SSID restriction to %s"

    .line 210
    invoke-static {v5, v2, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v2

    const/16 v4, 0x3f

    .line 211
    aput-object v2, v0, v4

    const/16 v2, 0x45

    .line 212
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Admin %d has changed Wifi state change allowed to %s"

    .line 213
    invoke-static {v5, v2, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v2

    const/16 v4, 0x40

    .line 214
    aput-object v2, v0, v4

    const/16 v2, 0x3e

    .line 215
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Admin %d has added SSID %s to the restriction blocklist."

    .line 216
    invoke-static {v5, v2, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v2

    const/16 v4, 0x41

    .line 217
    aput-object v2, v0, v4

    const/16 v2, 0x3f

    .line 218
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Admin %d has removed SSID %s from the restriction blocklist."

    .line 219
    invoke-static {v5, v2, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v2

    const/16 v4, 0x42

    .line 220
    aput-object v2, v0, v4

    const/16 v2, 0x40

    .line 221
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Admin %d has removed all SSIDs from the restriction blocklist."

    .line 222
    invoke-static {v5, v2, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v2

    const/16 v4, 0x43

    .line 223
    aput-object v2, v0, v4

    const/16 v2, 0x41

    .line 224
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Admin %d has added SSID %s to the restriction allowlist."

    .line 225
    invoke-static {v5, v2, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v2

    const/16 v4, 0x44

    .line 226
    aput-object v2, v0, v4

    const/16 v2, 0x42

    .line 227
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Admin %d has removed SSID %s from the restriction allowlist."

    .line 228
    invoke-static {v5, v2, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v2

    const/16 v4, 0x45

    .line 229
    aput-object v2, v0, v4

    const/16 v2, 0x43

    .line 230
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Admin %d has removed all SSIDs from the restriction allowlist."

    .line 231
    invoke-static {v5, v2, v4, v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 232
    aput-object v2, v0, v3

    const/16 v2, 0x47

    .line 233
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Admin %d has changed NFC state change to %s"

    .line 234
    const-string v4, "MiscPolicy"

    .line 235
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;->m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x47

    .line 236
    aput-object v1, v0, v2

    const v1, 0x33479

    .line 237
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x5

    const/4 v4, 0x0

    .line 238
    const-string v5, "TAG_PACKAGE_INSTALLED: package name = %s - package version code = %d - user id = %d"

    const-string v6, "SecurityLog"

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 239
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const v1, 0x3347b

    .line 240
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 241
    const-string v5, "TAG_PACKAGE_UNINSTALLED: package name = %s - package version code = %d - user id = %d"

    const-string v6, "SecurityLog"

    const/4 v2, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 242
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const v1, 0x3347a

    .line 243
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 244
    const-string v5, "TAG_PACKAGE_UPDATED: package name = %s - package version code = %d - user id = %d"

    const-string v6, "SecurityLog"

    const/4 v2, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 245
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const v1, 0x33477

    .line 246
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x6

    .line 247
    const-string v5, "TAG_BLUETOOTH_CONNECTION: MAC address = %s - connection successful = %b - reason = %s"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    const/4 v7, 0x2

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 248
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const v1, 0x33478

    .line 249
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x5

    .line 250
    const-string v5, "TAG_BLUETOOTH_DISCONNECTION: MAC address = %s - reason = %s"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 251
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const v1, 0x33475

    .line 252
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 253
    const-string v5, "TAG_WIFI_CONNECTION: attempt of connection BSSID = %s - eventType = %s - reason = %s"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    const/4 v7, 0x2

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 254
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const v1, 0x33476

    .line 255
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 256
    const-string v5, "TAG_WIFI_DISCONNECTION: disconnected from BSSID = %s - reason = %s"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 257
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const v1, 0x33474

    .line 258
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    .line 259
    const-string v5, "TAG_PASSWORD_CHANGED: new password complexity = %d - target user ID = %d"

    const-string v6, "SecurityLog"

    const/4 v2, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 260
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const v1, 0x33473

    .line 261
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 262
    const-string v5, "TAG_PASSWORD_COMPLEXITY_REQUIRED: admin package name = %s - admin user ID = %d - target user ID = %d - password complexity = %d"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 263
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const v1, 0x33472

    .line 264
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 265
    const-string v5, "TAG_CAMERA_POLICY_SET: admin package name = %s - admin user ID = %d - target user ID = %d - camera is disabled = %b"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 266
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const v1, 0x33471

    .line 267
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x4

    .line 268
    const-string v5, "TAG_CERT_VALIDATION_FAILURE: failed to validate X.509v3 certificate - reason = %s"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 269
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const v1, 0x33470

    .line 270
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    .line 271
    const-string v5, "TAG_KEY_INTEGRITY_VIOLATION: cryptographic key integrity check failed - key alias = %s - uid owner = %d"

    const-string v6, "SecurityLog"

    const/4 v2, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 272
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const v1, 0x3346f

    .line 273
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x6

    .line 274
    const-string v5, "TAG_CRYPTO_SELF_TEST_COMPLETED: result = %b"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    const/4 v7, 0x2

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 275
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const v1, 0x3346b

    .line 276
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x5

    .line 277
    const-string v5, "TAG_USER_RESTRICTION_ADDED: admin package name = %s - user id = %d - user restriction = %s"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 278
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const v1, 0x3346c

    .line 279
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 280
    const-string v5, "TAG_USER_RESTRICTION_REMOVED: admin package name = %s - user id = %d - user restriction = %s"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 281
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const v1, 0x3346d

    .line 282
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x6

    .line 283
    const-string v5, "TAG_CERT_AUTHORITY_INSTALLED: result = %b - certificate subject = %s - user id = %d"

    const-string v6, "SecurityLog"

    const/4 v2, 0x0

    const/4 v7, 0x2

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 284
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const v1, 0x3346e

    .line 285
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 286
    const-string v5, "TAG_CERT_AUTHORITY_REMOVED: result = %b - certificate subject = %s - user id = %d"

    const-string v6, "SecurityLog"

    const/4 v2, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 287
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const v1, 0x33468

    .line 288
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 289
    const-string v5, "TAG_KEY_GENERATED: cryptographic key was generated - result = %b - key alias = %s - request process uid = %d"

    const-string v6, "SecurityLog"

    const/4 v2, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 290
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const v1, 0x33469

    .line 291
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 292
    const-string v5, "TAG_KEY_IMPORT: cryptographic key was imported - result = %b - key alias = %s - request process uid = %d"

    const-string v6, "SecurityLog"

    const/4 v2, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 293
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const v1, 0x3346a

    .line 294
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 295
    const-string v5, "TAG_KEY_DESTRUCTION: cryptographic key was destroyed - result = %b - key alias = %s - process uid = %d"

    const-string v6, "SecurityLog"

    const/4 v2, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 296
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const v1, 0x33467

    .line 297
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    const/4 v4, 0x2

    .line 298
    const-string v5, "TAG_WIPE_FAILURE"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 299
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const v1, 0x33466

    .line 300
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x5

    const/4 v4, 0x1

    .line 301
    const-string v5, "TAG_REMOTE_LOCK: admin package name = %s - admin user ID = %d - target user ID = %d"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 302
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const v1, 0x33465

    .line 303
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 304
    const-string v5, "TAG_KEYGUARD_DISABLED_FEATURES_SET: admin package name = %s - admin user ID = %d - target user ID = %d - disabled keyguard feature mask = %d"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 305
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const v1, 0x33464

    .line 306
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 307
    const-string v5, "TAG_MAX_PASSWORD_ATTEMPTS_SET: admin package name = %s - admin user ID = %d - target user ID = %d - new maximum of failed attempts = %d"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 308
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const v1, 0x33463

    .line 309
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 310
    const-string v5, "TAG_MAX_SCREEN_LOCK_TIMEOUT_SET: admin package name = %s - admin user ID = %d - target user ID = %d - new screen lock timeout = %d"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 311
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const v1, 0x33462

    .line 312
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 313
    const-string v5, "TAG_PASSWORD_HISTORY_LENGTH_SET: admin package name = %s - admin user ID = %d - target user ID = %d - new password history length = %d"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 314
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const v1, 0x33461

    .line 315
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 316
    const-string v5, "TAG_PASSWORD_COMPLEXITY_SET: admin package name = %s - admin user ID = %d - target user ID = %d - minimum password length = %d - password quality constraint = %d - minimum of letters = %d - minimum of non-letters = %d - minimum of digits = %d - minimum of uppercase letters = %d - minimum of lowercase letters = %d - minimum of symbols = %d"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 317
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const v1, 0x33460

    .line 318
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 319
    const-string v5, "TAG_PASSWORD_EXPIRATION_SET: admin package name = %s - admin user ID = %d - target user ID = %d - new timeout = %d"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 320
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const v1, 0x3345f

    .line 321
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x3

    .line 322
    const-string v5, "TAG_LOG_BUFFER_SIZE_CRITICAL"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 323
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const v1, 0x3345d

    .line 324
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x5

    const/4 v4, 0x2

    .line 325
    const-string v5, "TAG_MEDIA_MOUNT: mount point: %s - volume label: %s"

    const-string v6, "SecurityLog"

    const/4 v2, 0x3

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 326
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const v1, 0x3345e

    .line 327
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 328
    const-string v5, "TAG_MEDIA_UNMOUNT: mount point: %s - volume label: %s"

    const-string v6, "SecurityLog"

    const/4 v2, 0x3

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 329
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const v1, 0x3345b

    .line 330
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x3

    .line 331
    const-string v5, "TAG_LOGGING_STARTED"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 332
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const v1, 0x3345c

    .line 333
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 334
    const-string v5, "TAG_LOGGING_STOPPED"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 335
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const v1, 0x3345a

    .line 336
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    .line 337
    const-string v5, "TAG_OS_SHUTDOWN"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 338
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const v1, 0x33459

    .line 339
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 340
    const-string v5, "TAG_OS_STARTUP: Verified Boot state: %s - dm-verity mode: %s"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 341
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const v1, 0x33458

    .line 342
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    .line 343
    const-string v5, "TAG_KEYGUARD_SECURED"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 344
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const v1, 0x33457

    .line 345
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x6

    .line 346
    const-string v5, "TAG_KEYGUARD_DISMISS_AUTH_ATTEMPT: result: %b - strong authentication: %b"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    const/4 v7, 0x2

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 347
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const v1, 0x33456

    .line 348
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x5

    .line 349
    const-string v5, "TAG_KEYGUARD_DISMISSED"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 350
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const v1, 0x33455

    .line 351
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x0

    .line 352
    const-string v5, "TAG_APP_PROCESS_START: process name = %s - start time = %d - uid = %d - pid = %d - SE info tag = %s - SHA256 hash = %s"

    const-string v6, "SecurityLog"

    const/4 v2, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 353
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const v1, 0x33454

    .line 354
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    .line 355
    const-string v5, "TAG_SYNC_SEND_FILE: file pushed to device file destination path= %s"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 356
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const v1, 0x33453

    .line 357
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 358
    const-string v5, "TAG_SYNC_RECV_FILE: file pulled from device file source path = %s"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 359
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const v1, 0x33452

    .line 360
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 361
    const-string v5, "TAG_ADB_SHELL_CMD: shell command issued over ADB - command = %s"

    const-string v6, "SecurityLog"

    const/4 v2, 0x3

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 362
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const v1, 0x33451

    .line 363
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 364
    const-string v5, "TAG_ADB_SHELL_INTERACTIVE: ADB interactive shell was open"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 365
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const v1, 0x3347c

    .line 366
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 367
    const-string v5, "TAG_BACKUP_SERVICE_TOGGLED: admin package name = %s - admin user ID = %d - backup service state = %d"

    const-string v6, "SecurityLog"

    const/4 v2, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    move-result-object v2

    .line 368
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x73

    aput-object v1, v0, v2

    .line 369
    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap;->EVENT_MAP:Ljava/util/Map;

    return-void
.end method
