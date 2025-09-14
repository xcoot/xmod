.class public final Lcom/android/server/pm/VerifyingSession$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/VerifyingSession;

.field public final synthetic val$verificationId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/VerifyingSession;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/VerifyingSession$1;->this$0:Lcom/android/server/pm/VerifyingSession;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/server/pm/VerifyingSession$1;->val$verificationId:I

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/server/pm/VerifyingSession$1;->this$0:Lcom/android/server/pm/VerifyingSession;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    const/16 p2, 0x1a

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget p2, p0, Lcom/android/server/pm/VerifyingSession$1;->val$verificationId:I

    .line 14
    .line 15
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/pm/VerifyingSession$1;->this$0:Lcom/android/server/pm/VerifyingSession;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 20
    .line 21
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "app_integrity_verification_timeout"

    .line 30
    .line 31
    const-wide/16 v1, 0x7530

    .line 32
    .line 33
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 42
    .line 43
    .line 44
    return-void
.end method
