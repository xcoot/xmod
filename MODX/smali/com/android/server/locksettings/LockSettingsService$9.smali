.class public final Lcom/android/server/locksettings/LockSettingsService$9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/locksettings/LockSettingsService$9;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$9;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsService$9;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    const-string v0, "LockSettingsService"

    .line 8
    const-string v1, "Start backup spblob dir"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$9;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 19
    move-result-wide v2

    .line 20
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$9;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    .line 25
    move-result-wide v4

    .line 26
    invoke-static {v1, v2, v3, v4, v5}, Lcom/samsung/android/lock/SPBnRManager;->setProtectorIdForBackup(IJJ)V

    .line 29
    invoke-static {}, Lcom/samsung/android/lock/SPBnRManager;->startBackup()Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 35
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$9;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 37
    const-string/jumbo v0, "locksettings_spblob_backup"

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    move-result-wide v2

    .line 44
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 47
    const-string p0, "SPblobBNR, Success backup spblob dir"

    .line 49
    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 52
    invoke-static {v1}, Lcom/samsung/android/lock/SPBnRManager;->getPWFilelist(I)Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 59
    invoke-static {v1}, Lcom/samsung/android/lock/SPBnRManager;->getBackupPWFilelist(I)Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const-string p0, "SPblobBNR, Failed backup spblob dir"

    .line 69
    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 72
    invoke-static {v1}, Lcom/samsung/android/lock/SPBnRManager;->getPWFilelist(I)Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 79
    invoke-static {v1}, Lcom/samsung/android/lock/SPBnRManager;->getBackupPWFilelist(I)Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    const/4 v0, 0x1

    .line 84
    invoke-static {p0, v0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;Z)V

    .line 87
    :goto_0
    return-void

    .line 88
    :pswitch_0
    const-string v0, "LockSettingsService"

    .line 90
    const-string v1, "!@ Reset SecurityDebugLevel"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x0

    .line 96
    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->getFailureCount(I)I

    .line 99
    move-result v1

    .line 100
    sget v2, Lcom/samsung/android/lock/LsConstants;->SECURITY_DEBUG_ON_COUNT:I

    .line 102
    if-ge v1, v2, :cond_2

    .line 104
    if-gez v1, :cond_1

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$9;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->setSecurityDebugLevel(I)V

    .line 112
    goto :goto_2

    .line 113
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$9;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 115
    const/4 v0, 0x1

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->setSecurityDebugLevel(I)V

    .line 119
    :goto_2
    return-void

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
