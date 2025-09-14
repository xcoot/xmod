.class Lcom/android/server/pm/ApkChecksums$Injector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Lcom/android/server/pm/ApkChecksums$Injector$Producer;

.field public final mHandlerProducer:Lcom/android/server/pm/ApkChecksums$Injector$Producer;

.field public final mIncrementalManagerProducer:Lcom/android/server/pm/ApkChecksums$Injector$Producer;

.field public final mPackageManagerInternalProducer:Lcom/android/server/pm/ApkChecksums$Injector$Producer;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ApkChecksums$Injector;->mContext:Lcom/android/server/pm/ApkChecksums$Injector$Producer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/ApkChecksums$Injector;->mHandlerProducer:Lcom/android/server/pm/ApkChecksums$Injector$Producer;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/ApkChecksums$Injector;->mIncrementalManagerProducer:Lcom/android/server/pm/ApkChecksums$Injector$Producer;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/ApkChecksums$Injector;->mPackageManagerInternalProducer:Lcom/android/server/pm/ApkChecksums$Injector$Producer;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ApkChecksums$Injector;->mPackageManagerInternalProducer:Lcom/android/server/pm/ApkChecksums$Injector$Producer;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/server/pm/ApkChecksums$Injector$Producer;->produce()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 8
    .line 9
    return-object p0
.end method
