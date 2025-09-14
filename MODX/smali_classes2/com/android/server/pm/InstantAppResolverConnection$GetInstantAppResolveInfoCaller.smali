.class public final Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;
.super Landroid/util/TimedRemoteCaller;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller$1;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-wide v0, Lcom/android/server/pm/InstantAppResolverConnection;->CALL_SERVICE_TIMEOUT_MS:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Landroid/util/TimedRemoteCaller;-><init>(J)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller$1;-><init>(Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;->mCallback:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller$1;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/util/TimedRemoteCaller;->onRemoteMethodResult(Ljava/lang/Object;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getInstantAppResolveInfoList(Landroid/app/IInstantAppResolver;Landroid/content/pm/InstantAppRequestInfo;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/util/TimedRemoteCaller;->onBeforeRemoteCall()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;->mCallback:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller$1;

    .line 6
    .line 7
    invoke-interface {p1, p2, v0, v1}, Landroid/app/IInstantAppResolver;->getInstantAppResolveInfoList(Landroid/content/pm/InstantAppRequestInfo;ILandroid/os/IRemoteCallback;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/util/TimedRemoteCaller;->getResultTimed(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/util/List;

    .line 15
    .line 16
    return-object p0
.end method
