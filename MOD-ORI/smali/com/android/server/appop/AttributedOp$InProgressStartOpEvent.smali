.class public final Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mAttributionChainId:I

.field public mAttributionFlags:I

.field public mClientId:Landroid/os/IBinder;

.field public mFlags:I

.field public mNumUnfinishedStarts:I

.field public mOnDeath:Ljava/lang/Runnable;

.field public mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

.field public mStartElapsedTime:J

.field public mStartTime:J

.field public mUidState:I

.field public mVirtualDeviceId:I


# virtual methods
.method public final binderDied()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
