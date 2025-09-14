.class public final synthetic Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final produce(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mEnabled:Z

    .line 20
    .line 21
    new-instance p2, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;

    .line 22
    .line 23
    invoke-direct {p2}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mParser:Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;

    .line 27
    .line 28
    new-instance p2, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$1;

    .line 29
    .line 30
    invoke-direct {p2, p0}, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$1;-><init>(Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;)V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mAppCategoryCallback:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$1;

    .line 34
    .line 35
    iput-boolean p1, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mEnabled:Z

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_0
    new-instance p0, Landroid/os/HandlerThread;

    .line 39
    .line 40
    const-string p1, "UserManagerHandler"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_1
    new-instance p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;

    .line 54
    .line 55
    iget-object p1, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 56
    .line 57
    iget-object p2, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;-><init>(Lcom/android/server/pm/PackageManagerTracedLock;Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_2
    new-instance p0, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

    .line 64
    .line 65
    iget-object p1, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    invoke-direct {p0, p1}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;-><init>(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    return-object p0

    .line 71
    :pswitch_3
    new-instance p0, Lcom/samsung/android/server/pm/install/OmcInstallHelper;

    .line 72
    .line 73
    iget-object p1, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    return-object p0

    .line 81
    :pswitch_4
    new-instance p0, Lcom/samsung/android/server/pm/install/SkippingApks;

    .line 82
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    .line 85
    .line 86
    new-instance p1, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    .line 92
    .line 93
    return-object p0

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
