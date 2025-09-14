.class public Lcom/android/server/SmartStorageMaintIdler;
.super Landroid/app/job/JobService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SMART_STORAGE_MAINT_SERVICE:Landroid/content/ComponentName;


# instance fields
.field public final mFinishCallback:Lcom/android/server/SmartStorageMaintIdler$1;

.field public mJobParams:Landroid/app/job/JobParameters;

.field public final mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 3
    const-class v1, Lcom/android/server/SmartStorageMaintIdler;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, "android"

    .line 11
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sput-object v0, Lcom/android/server/SmartStorageMaintIdler;->SMART_STORAGE_MAINT_SERVICE:Landroid/content/ComponentName;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    iput-object v0, p0, Lcom/android/server/SmartStorageMaintIdler;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    new-instance v0, Lcom/android/server/SmartStorageMaintIdler$1;

    .line 14
    invoke-direct {v0, p0}, Lcom/android/server/SmartStorageMaintIdler$1;-><init>(Lcom/android/server/SmartStorageMaintIdler;)V

    .line 17
    iput-object v0, p0, Lcom/android/server/SmartStorageMaintIdler;->mFinishCallback:Lcom/android/server/SmartStorageMaintIdler$1;

    .line 19
    return-void
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 3
    iget-object v1, p0, Lcom/android/server/SmartStorageMaintIdler;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    new-instance v1, Lcom/android/server/SmartStorageMaintIdler$2;

    .line 15
    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/SmartStorageMaintIdler$2;-><init>(Lcom/android/server/SmartStorageMaintIdler;Landroid/app/job/JobParameters;Lcom/android/server/StorageManagerService;)V

    .line 18
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 21
    if-eqz v0, :cond_0

    .line 23
    move v2, v3

    .line 24
    :cond_0
    return v2
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/SmartStorageMaintIdler;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    return p1
.end method
