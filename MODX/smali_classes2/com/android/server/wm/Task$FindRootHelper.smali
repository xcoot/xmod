.class public final Lcom/android/server/wm/Task$FindRootHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public mIgnoreRelinquishIdentity:Z

.field public mRoot:Lcom/android/server/wm/ActivityRecord;

.field public mSetToBottomIfNone:Z

.field public final synthetic this$0:Lcom/android/server/wm/Task;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/Task$FindRootHelper;->this$0:Lcom/android/server/wm/Task;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/server/wm/Task$FindRootHelper;->mSetToBottomIfNone:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    .line 28
    .line 29
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    .line 30
    .line 31
    if-ne v0, p1, :cond_4

    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/wm/Task$FindRootHelper;->this$0:Lcom/android/server/wm/Task;

    .line 34
    .line 35
    iget v2, v2, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_4
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 39
    .line 40
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 41
    .line 42
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 43
    .line 44
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wm/Task$FindRootHelper;->mIgnoreRelinquishIdentity:Z

    .line 45
    .line 46
    if-nez v3, :cond_6

    .line 47
    .line 48
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 49
    .line 50
    iget v3, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 51
    .line 52
    and-int/lit16 v3, v3, 0x1000

    .line 53
    .line 54
    if-eqz v3, :cond_6

    .line 55
    .line 56
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 57
    .line 58
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 59
    .line 60
    const/16 v4, 0x3e8

    .line 61
    .line 62
    if-eq v3, v4, :cond_5

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_5

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 73
    .line 74
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 75
    .line 76
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 77
    .line 78
    if-eq v0, v2, :cond_5

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_6
    :goto_1
    const/4 v1, 0x1

    .line 85
    :goto_2
    return v1
.end method
