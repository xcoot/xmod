.class public final synthetic Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutUser;

.field public final synthetic f$1:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$2:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutUser;Lcom/android/server/pm/ShortcutService;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/ShortcutUser;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/pm/ShortcutService;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda3;->f$2:[I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/ShortcutUser;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/pm/ShortcutService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda3;->f$2:[I

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/pm/ShortcutLauncher;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v2, p1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 13
    .line 14
    iget v3, v0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 15
    .line 16
    invoke-virtual {v1, v3, v2}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(ILjava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget-object v4, p1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1, v4, v3}, Lcom/android/server/pm/ShortcutService;->injectApplicationInfoWithUninstalled(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 31
    .line 32
    const v2, 0x8000

    .line 33
    .line 34
    .line 35
    and-int/2addr v1, v2

    .line 36
    if-ne v1, v2, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v1, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 40
    .line 41
    iget-object v1, v1, Lcom/android/server/pm/ShortcutService;->mSmartSwitchBackupAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    iput-object v0, p1, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    .line 53
    .line 54
    iget v1, p1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 55
    .line 56
    invoke-static {v1, v4}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    aget v0, p0, p1

    .line 65
    .line 66
    add-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    aput v0, p0, p1

    .line 69
    .line 70
    :goto_1
    return-void
.end method
