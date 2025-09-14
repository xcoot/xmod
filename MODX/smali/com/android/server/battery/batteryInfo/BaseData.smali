.class public abstract Lcom/android/server/battery/batteryInfo/BaseData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final authPaths:Ljava/util/ArrayList;

.field public final efsPaths:Ljava/util/ArrayList;

.field public mAuthentificationResults:[Z

.field public mBatteryCount:I

.field public mBatteryType:I

.field public mCurrentValues:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const-string v1, "[SS][BattInfo]"

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public final readEfsValues()[Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 3
    instance-of v0, v0, [Ljava/lang/Long;

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 8
    iget v0, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 10
    new-array v0, v0, [Ljava/lang/Long;

    .line 12
    :goto_0
    iget v2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 14
    if-ge v1, v2, :cond_0

    .line 16
    iget-object v2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/String;

    .line 24
    invoke-static {v2}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 27
    move-result-wide v2

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    move-result-object v2

    .line 32
    aput-object v2, v0, v1

    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-object v0

    .line 38
    :cond_1
    iget v0, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 40
    new-array v0, v0, [Ljava/lang/String;

    .line 42
    :goto_1
    iget v2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 44
    if-ge v1, v2, :cond_2

    .line 46
    iget-object v2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Ljava/lang/String;

    .line 54
    const/4 v3, 0x1

    .line 55
    invoke-static {v2, v3}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    aput-object v2, v0, v1

    .line 61
    add-int/lit8 v1, v1, 0x1

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    return-object v0
.end method

.method public final saveInfoHistory()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    iget v3, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 10
    if-ge v2, v3, :cond_1

    .line 12
    iget-object v3, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Ljava/lang/String;

    .line 20
    invoke-static {v3, v1}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    const-string/jumbo v4, "efsValue:"

    .line 27
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v3, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_0

    .line 42
    iget-object v3, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Ljava/lang/String;

    .line 50
    invoke-static {v3, v1}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 53
    move-result-object v3

    .line 54
    const-string v4, " ,authValue:"

    .line 56
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_0
    const-string v3, "    "

    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    const-string v2, "[saveInfoHistory]"

    .line 75
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 91
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v2, " saveInfoHistory"

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v2

    .line 115
    const-string v3, "/data/log/battery_service/battery_service_main_history"

    .line 117
    invoke-static {v3, v1, v2}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    .line 122
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string p0, " "

    .line 130
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object p0

    .line 144
    const/4 v0, 0x3

    .line 145
    invoke-static {v0, p0}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 148
    return-void
.end method

.method public final setPermissionsEfs(I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 4
    if-ge v0, v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/String;

    .line 14
    invoke-static {v1}, Lcom/android/server/battery/BattUtils;->isExist(Ljava/lang/String;)Z

    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 20
    if-eqz v1, :cond_0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/String;

    .line 30
    const/16 v3, 0x1b0

    .line 32
    const/16 v4, 0x3e8

    .line 34
    invoke-static {v1, v3, v4, p1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move-exception v1

    .line 39
    const-string v3, "[setPermissionsEfs]Exception"

    .line 41
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    const-string v3, "[setPermissionsEfs]not exist:"

    .line 52
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    iget-object v3, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/String;

    .line 63
    invoke-static {v1, v3, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    return-void
.end method
