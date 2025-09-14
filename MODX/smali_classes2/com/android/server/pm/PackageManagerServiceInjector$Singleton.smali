.class Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public volatile mInstance:Ljava/lang/Object;

.field public final mProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->mInstance:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->mProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->mInstance:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->mProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Producer;->produce(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->mInstance:Ljava/lang/Object;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->mInstance:Ljava/lang/Object;

    .line 14
    .line 15
    return-object p0
.end method
