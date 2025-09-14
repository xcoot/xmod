.class public Lcom/android/server/wm/DisplayArea$Tokens;
.super Lcom/android/server/wm/DisplayArea;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mGetOrientingWindow:Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda1;

.field public mLastKeyguardForcedOrientation:I

.field public final mWindowComparator:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mLastKeyguardForcedOrientation:I

    .line 6
    .line 7
    new-instance p1, Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mWindowComparator:Ljava/util/Comparator;

    .line 17
    .line 18
    new-instance p1, Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda1;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayArea$Tokens;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mGetOrientingWindow:Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda1;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final asTokens()Lcom/android/server/wm/DisplayArea$Tokens;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getOrientation(I)I
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mGetOrientingWindow:Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda1;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return p1

    .line 13
    :cond_0
    iget-object p1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 14
    .line 15
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 16
    .line 17
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    aget-boolean v1, v1, v2

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    int-to-long v2, p1

    .line 29
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 30
    .line 31
    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 32
    .line 33
    int-to-long v4, v4

    .line 34
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 35
    .line 36
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v11

    .line 48
    const/16 v9, 0x14

    .line 49
    .line 50
    const/4 v10, 0x0

    .line 51
    const-wide v7, 0x1ef316b0785f3aefL    # 1.357741434904241E-159

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 62
    .line 63
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 64
    .line 65
    check-cast v1, Lcom/android/server/policy/PhoneWindowManager;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    const/4 v1, -0x2

    .line 74
    if-eq p1, v1, :cond_2

    .line 75
    .line 76
    const/4 v1, -0x1

    .line 77
    if-eq p1, v1, :cond_2

    .line 78
    .line 79
    iput p1, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mLastKeyguardForcedOrientation:I

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    iget p1, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mLastKeyguardForcedOrientation:I

    .line 83
    .line 84
    :cond_3
    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 85
    .line 86
    return p1
.end method
