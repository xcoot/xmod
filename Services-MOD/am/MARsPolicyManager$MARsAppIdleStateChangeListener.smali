.class public final Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;
.super Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;->this$0:Lcom/android/server/am/MARsPolicyManager;

    .line 3
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .locals 5

    .line 1
    const-string/jumbo p3, "update resetTime : "

    .line 4
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const-string v1, "MARsPolicyManager"

    .line 10
    const-string/jumbo v2, "onAppIdleStateChanged() "

    .line 13
    const-string/jumbo v3, "|bucket : "

    .line 16
    const-string/jumbo v4, "|reason : "

    .line 19
    invoke-static {p4, v2, p1, v3, v4}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2, p5, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 26
    :cond_0
    sget-object p5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 28
    monitor-enter p5

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;->this$0:Lcom/android/server/am/MARsPolicyManager;

    .line 31
    iget-object v1, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 33
    invoke-static {v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 36
    move-result-object p2

    .line 37
    if-eqz p2, :cond_5

    .line 39
    iget v1, p2, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 41
    const/4 v2, 0x2

    .line 42
    if-eq v1, v2, :cond_4

    .line 44
    const/16 v2, 0x100

    .line 46
    if-ne v1, v2, :cond_1

    .line 48
    goto/16 :goto_1

    .line 50
    :cond_1
    const/16 v1, 0x28

    .line 52
    if-lt p4, v1, :cond_2

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    move-result-wide v1

    .line 58
    iput-wide v1, p2, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 60
    new-instance p4, Lcom/android/server/am/mars/database/FASEntityBuilder;

    .line 62
    invoke-direct {p4}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    .line 65
    iget-object v1, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 67
    iput-object v1, p4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 69
    iget v1, p2, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    iput-object v1, p4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 77
    iget v1, p2, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    iput-object v1, p4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 85
    iget-wide v1, p2, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 87
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 91
    iput-object v1, p4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    .line 93
    invoke-virtual {p4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    .line 96
    move-result-object p4

    .line 97
    if-eqz v0, :cond_6

    .line 99
    const-string v0, "MARsPolicyManager"

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string p1, "["

    .line 111
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;->this$0:Lcom/android/server/am/MARsPolicyManager;

    .line 116
    iget-wide p1, p2, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    invoke-static {p1, p2}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string p0, "]"

    .line 130
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object p0

    .line 137
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    goto :goto_2

    .line 141
    :catchall_0
    move-exception p0

    .line 142
    goto :goto_3

    .line 143
    :cond_2
    const/16 p1, 0xa

    .line 145
    if-gt p4, p1, :cond_5

    .line 147
    iget-boolean p1, p2, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 149
    if-nez p1, :cond_5

    .line 151
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;->this$0:Lcom/android/server/am/MARsPolicyManager;

    .line 153
    const/16 p1, 0x400

    .line 155
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 158
    move-result p0

    .line 159
    if-eqz p0, :cond_5

    .line 161
    iget p0, p2, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 163
    const/16 p1, 0x80

    .line 165
    if-ne p0, p1, :cond_5

    .line 167
    new-instance p0, Lcom/android/server/am/mars/database/FASEntityBuilder;

    .line 169
    invoke-direct {p0}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    .line 172
    iget-object p1, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 174
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 176
    iget p1, p2, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 178
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 181
    move-result-object p1

    .line 182
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 184
    iget-boolean p1, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 186
    if-eqz p1, :cond_3

    .line 188
    const-string p1, "1"

    .line 190
    goto :goto_0

    .line 191
    :cond_3
    const-string p1, "0"

    .line 193
    :goto_0
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    .line 195
    iget p1, p2, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 197
    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    .line 200
    move-result-object p1

    .line 201
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    .line 203
    iget p1, p2, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 205
    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    .line 208
    move-result-object p1

    .line 209
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    .line 211
    iget p1, p2, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 213
    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    .line 216
    move-result-object p1

    .line 217
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    .line 219
    iget p1, p2, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 224
    move-result-object p1

    .line 225
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 227
    iget-wide p1, p2, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 229
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 232
    move-result-object p1

    .line 233
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    .line 235
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    .line 238
    move-result-object p4

    .line 239
    goto :goto_2

    .line 240
    :cond_4
    :goto_1
    monitor-exit p5

    .line 241
    return-void

    .line 242
    :cond_5
    const/4 p4, 0x0

    .line 243
    :cond_6
    :goto_2
    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    if-eqz p4, :cond_7

    .line 246
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 249
    sget-object p0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 251
    invoke-virtual {p0, p4}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeSpecificMsgToDBHandler(Lcom/android/server/am/mars/database/FASEntity;)V

    .line 254
    :cond_7
    return-void

    .line 255
    :goto_3
    :try_start_1
    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    throw p0
.end method
