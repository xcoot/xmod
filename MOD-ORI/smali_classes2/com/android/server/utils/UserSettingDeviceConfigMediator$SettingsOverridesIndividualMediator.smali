.class public final Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mProperties:Landroid/provider/DeviceConfig$Properties;

.field public final mSettingsParser:Landroid/util/KeyValueListParser;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/KeyValueListParser;

    .line 5
    .line 6
    const/16 v1, 0x2c

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mSettingsParser:Landroid/util/KeyValueListParser;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mSettingsParser:Landroid/util/KeyValueListParser;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mProperties:Landroid/provider/DeviceConfig$Properties;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final getFloat(FLjava/lang/String;)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mSettingsParser:Landroid/util/KeyValueListParser;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mProperties:Landroid/provider/DeviceConfig$Properties;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p2, p1}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    :goto_0
    invoke-virtual {v0, p2, p1}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final getLong(JLjava/lang/String;)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mSettingsParser:Landroid/util/KeyValueListParser;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mProperties:Landroid/provider/DeviceConfig$Properties;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p3, p1, p2}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    :goto_0
    invoke-virtual {v0, p3, p1, p2}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 13
    .line 14
    .line 15
    move-result-wide p0

    .line 16
    return-wide p0
.end method
