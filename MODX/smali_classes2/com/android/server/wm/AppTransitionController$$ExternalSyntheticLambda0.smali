.class public final synthetic Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    iget p0, p0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/wm/TaskFragment;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isReadyToTransit()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    aget-boolean p0, p0, v0

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 26
    .line 27
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x0

    .line 33
    const-wide v2, 0x31ad0e8f6e0d38eaL    # 2.1050379575263146E-69

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    :cond_1
    :goto_0
    return v0

    .line 44
    :pswitch_0
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 45
    .line 46
    const/4 p0, 0x1

    .line 47
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const/4 p0, 0x0

    .line 55
    :goto_1
    return p0

    .line 56
    :pswitch_1
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 57
    .line 58
    const/4 p0, 0x1

    .line 59
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    const/4 p0, 0x0

    .line 73
    :goto_2
    return p0

    .line 74
    :pswitch_2
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    return p0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
