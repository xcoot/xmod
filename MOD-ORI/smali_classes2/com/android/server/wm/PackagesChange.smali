.class public abstract Lcom/android/server/wm/PackagesChange;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sDumpCallbacks:Ljava/util/List;

.field public static final sTaskChangeCallbacks:Ljava/util/List;

.field public static final sUserChangeCallbacks:Ljava/util/List;


# instance fields
.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mCachedHomeActivities:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mControllerName:Ljava/lang/String;

.field public mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/wm/PackagesChange;->sDumpCallbacks:Ljava/util/List;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/android/server/wm/PackagesChange;->sUserChangeCallbacks:Ljava/util/List;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/android/server/wm/PackagesChange;->sTaskChangeCallbacks:Ljava/util/List;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/server/wm/PackagesChange;->mControllerName:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/wm/PackagesChange;->mCachedHomeActivities:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 22
    .line 23
    new-instance p1, Lcom/android/server/wm/PackagesChange$1;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/android/server/wm/PackagesChange$1;-><init>(Lcom/android/server/wm/PackagesChange;)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lcom/android/server/wm/PackagesChange;->sDumpCallbacks:Ljava/util/List;

    .line 29
    .line 30
    check-cast p0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static executeAllShellCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/wm/PackagesChange;->sDumpCallbacks:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/server/wm/PackagesChange$PackagesDumpCallback;

    .line 20
    .line 21
    invoke-interface {v1, p0, p1, p2}, Lcom/android/server/wm/PackagesChange$PackagesDumpCallback;->executeShellCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public static updateAllValueToTask(Lcom/android/server/wm/Task;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/wm/PackagesChange;->sTaskChangeCallbacks:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/server/wm/PackagesChange$PackagesTaskChangeCallback;

    .line 20
    .line 21
    invoke-interface {v1, p0}, Lcom/android/server/wm/PackagesChange$PackagesTaskChangeCallback;->updateValueToTask(Lcom/android/server/wm/Task;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final getLauncherActivities(ILjava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/PackagesChange;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/samsung/android/server/util/SafetySystemService;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/wm/PackagesChange;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/PackagesChange;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Landroid/content/Intent;

    .line 16
    .line 17
    const-string v1, "android.intent.action.MAIN"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "android.intent.category.LAUNCHER"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iget-object p0, p0, Lcom/android/server/wm/PackagesChange;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 33
    .line 34
    const/high16 v0, 0xc0000

    .line 35
    .line 36
    invoke-virtual {p0, p2, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method
