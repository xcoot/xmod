.class public final Lcom/android/server/policy/KeyboardShortcutManager$SFinderBehavior;
.super Lcom/android/server/policy/KeyboardShortcutManager$Behavior;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDeniedActivities:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    .line 2
    .line 3
    .line 4
    const-string/jumbo p1, "{com.android.phone/com.android.phone.UsimDownload}"

    .line 5
    .line 6
    .line 7
    filled-new-array {p1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/android/server/policy/KeyboardShortcutManager$SFinderBehavior;->mDeniedActivities:[Ljava/lang/String;

    .line 12
    .line 13
    new-instance p1, Landroid/content/Intent;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string p2, "com.sec.android.app.launcher/com.sec.android.app.launcher.search.SearchActivity"

    .line 19
    .line 20
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const-string p2, "callername"

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mIntent:Landroid/content/Intent;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final preCondition()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mIntent:Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "KeyboardShortcutManager"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-virtual {v3, v0, v5, v4}, Landroid/content/pm/PackageManager;->semQueryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-lez v0, :cond_4

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 33
    .line 34
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTopActivity:Landroid/content/ComponentName;

    .line 35
    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager$SFinderBehavior;->mDeniedActivities:[Ljava/lang/String;

    .line 44
    .line 45
    array-length v4, p0

    .line 46
    :goto_0
    if-ge v5, v4, :cond_3

    .line 47
    .line 48
    aget-object v6, p0, v5

    .line 49
    .line 50
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_2

    .line 55
    .line 56
    const-string p0, "canLaunchAppByExternalKeyboard: It is denied activity"

    .line 57
    .line 58
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    return v2

    .line 62
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->externalKeyboardPolicy()Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    return p0

    .line 70
    :cond_4
    :goto_2
    const-string p0, "canLaunchAppByExternalKeyboard : SFinder activity is not available"

    .line 71
    .line 72
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    return v2
.end method
