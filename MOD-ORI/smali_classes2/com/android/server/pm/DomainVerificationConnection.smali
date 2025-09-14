.class public final Lcom/android/server/pm/DomainVerificationConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mUmInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 9
    .line 10
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 11
    .line 12
    invoke-interface {p1, v0}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/pm/DomainVerificationConnection;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final schedule(ILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    const/16 v1, 0x1b

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 12
    .line 13
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final scheduleWriteSettings()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
