.class public final Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/textservices/TextServicesManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/textservices/TextServicesManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSomePackagesChanged()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    monitor-exit v1

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->-$$Nest$minitializeTextServicesData(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    .line 31
    .line 32
    .line 33
    iget-object v3, v0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mResolver:Landroid/content/ContentResolver;

    .line 34
    .line 35
    iget v4, v0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUserId:I

    .line 36
    .line 37
    const-string/jumbo v5, "spell_checker_enabled"

    .line 38
    .line 39
    .line 40
    const/4 v6, 0x1

    .line 41
    invoke-static {v3, v5, v6, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-ne v3, v6, :cond_5

    .line 46
    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-virtual {v2, v3, v0}, Lcom/android/server/textservices/TextServicesManagerService;->findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-static {v2, v0}, Lcom/android/server/textservices/TextServicesManagerService;->setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {p0, v3}, Lcom/android/internal/content/PackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    const/4 v5, 0x3

    .line 74
    if-eq v4, v5, :cond_2

    .line 75
    .line 76
    const/4 v5, 0x2

    .line 77
    if-ne v4, v5, :cond_4

    .line 78
    .line 79
    :cond_2
    iget-object v4, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    .line 80
    .line 81
    invoke-virtual {v4, v3, v0}, Lcom/android/server/textservices/TextServicesManagerService;->findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    if-eqz v3, :cond_3

    .line 86
    .line 87
    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-nez v2, :cond_4

    .line 100
    .line 101
    :cond_3
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-static {v3, v0}, Lcom/android/server/textservices/TextServicesManagerService;->setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    :goto_0
    monitor-exit v1

    .line 110
    return-void

    .line 111
    :cond_5
    monitor-exit v1

    .line 112
    return-void

    .line 113
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    throw p0
.end method
