.class public final Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;->mUserId:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-class v1, Landroid/os/PowerManager;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/os/PowerManager;

    .line 12
    .line 13
    const-string v1, "UserManagerService"

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "Auto-locking private space with user-id "

    .line 26
    .line 27
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v2, p0, Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;->mUserId:I

    .line 31
    .line 32
    invoke-static {v0, v2, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 36
    .line 37
    iget p0, p0, Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;->mUserId:I

    .line 38
    .line 39
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x1

    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabledAsync(IZLandroid/content/IntentSender;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v2, "Device is interactive, skipping auto-lock for profile user "

    .line 54
    .line 55
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget p0, p0, Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;->mUserId:I

    .line 59
    .line 60
    invoke-static {v0, p0, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void
.end method
