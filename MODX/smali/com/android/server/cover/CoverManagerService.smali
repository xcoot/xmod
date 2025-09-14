.class public final Lcom/android/server/cover/CoverManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCoverManagerServiceImpl:Lcom/android/server/cover/CoverManagerServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance p1, Lcom/android/server/cover/CoverManagerServiceImpl;

    .line 6
    invoke-direct {p1}, Lcom/samsung/android/cover/ICoverManager$Stub;-><init>()V

    .line 9
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    .line 11
    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p1, Lcom/android/server/cover/CoverManagerServiceImpl;->mSystemReady:Z

    .line 17
    const-class v0, Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    .line 19
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    .line 25
    iput-object v0, p1, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    .line 27
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerServiceImpl:Lcom/android/server/cover/CoverManagerServiceImpl;

    .line 29
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 1

    .line 1
    const/16 v0, 0x258

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerServiceImpl:Lcom/android/server/cover/CoverManagerServiceImpl;

    .line 7
    iget-boolean p1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSystemReady:Z

    .line 9
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSystemReady:Z

    .line 14
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string/jumbo v0, "cover"

    .line 4
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerServiceImpl:Lcom/android/server/cover/CoverManagerServiceImpl;

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 9
    return-void
.end method
