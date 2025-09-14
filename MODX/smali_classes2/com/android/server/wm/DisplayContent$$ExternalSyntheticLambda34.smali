.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$1:Landroid/util/SparseBooleanArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/util/SparseBooleanArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda34;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda34;->f$1:Landroid/util/SparseBooleanArray;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda34;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda34;->f$1:Landroid/util/SparseBooleanArray;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    move v1, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v1, v2

    .line 25
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    if-nez v4, :cond_2

    .line 32
    .line 33
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_BOOT_enabled:[Z

    .line 34
    .line 35
    aget-boolean p0, p0, v2

    .line 36
    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 40
    .line 41
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 42
    .line 43
    int-to-long p0, p0

    .line 44
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BOOT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 45
    .line 46
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    const/4 v8, 0x0

    .line 55
    const-wide v5, 0x21c2b129bbcd39d0L    # 4.677877926656815E-146

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    const/4 v7, 0x1

    .line 61
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    move v2, v3

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    if-eqz v4, :cond_5

    .line 67
    .line 68
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 69
    .line 70
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 71
    .line 72
    if-eq p1, v3, :cond_4

    .line 73
    .line 74
    const/16 v1, 0x7dd

    .line 75
    .line 76
    if-eq p1, v1, :cond_4

    .line 77
    .line 78
    const/16 v1, 0x7e5

    .line 79
    .line 80
    if-eq p1, v1, :cond_4

    .line 81
    .line 82
    const/16 v1, 0x7f8

    .line 83
    .line 84
    if-eq p1, v1, :cond_3

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    iget-object p1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 88
    .line 89
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 90
    .line 91
    check-cast p1, Lcom/android/server/policy/PhoneWindowManager;

    .line 92
    .line 93
    iget-object v0, p1, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 94
    .line 95
    monitor-enter v0

    .line 96
    :try_start_0
    iget-boolean p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    .line 97
    .line 98
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {p0, v1, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    throw p0

    .line 106
    :cond_4
    invoke-virtual {p0, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 107
    .line 108
    .line 109
    :cond_5
    :goto_1
    return v2
.end method
