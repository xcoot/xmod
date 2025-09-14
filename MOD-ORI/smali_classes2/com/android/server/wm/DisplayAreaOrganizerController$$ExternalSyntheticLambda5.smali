.class public final synthetic Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Landroid/window/IDisplayAreaOrganizer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayAreaOrganizerController;ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;->f$1:I

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;->f$2:Ljava/util/List;

    .line 8
    .line 9
    iput-object p4, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;->f$3:Landroid/window/IDisplayAreaOrganizer;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 7
    .line 8
    iget v3, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;->f$1:I

    .line 9
    .line 10
    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;->f$2:Ljava/util/List;

    .line 11
    .line 12
    iget-object v5, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;->f$3:Landroid/window/IDisplayAreaOrganizer;

    .line 13
    .line 14
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object p0, p1, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/Display;->isTrusted()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    aget-boolean p0, p0, v0

    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    iget p0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 35
    .line 36
    int-to-long p0, p0

    .line 37
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 38
    .line 39
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    const/4 v4, 0x0

    .line 48
    const-wide v1, -0x2a8def86e341c7bfL    # -4.0459528513661465E103

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;

    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    move-object v1, p0

    .line 62
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController;ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayArea;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 70
    .line 71
    iget v1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;->f$1:I

    .line 72
    .line 73
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;->f$2:Ljava/util/List;

    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;->f$3:Landroid/window/IDisplayAreaOrganizer;

    .line 76
    .line 77
    check-cast p1, Lcom/android/server/wm/DisplayArea;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    iget v0, p1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 83
    .line 84
    if-eq v0, v1, :cond_2

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    const/4 v0, 0x1

    .line 88
    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;Z)V

    .line 89
    .line 90
    .line 91
    new-instance p0, Landroid/window/DisplayAreaAppearedInfo;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    new-instance v1, Landroid/view/SurfaceControl;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-string v3, "DisplayAreaOrganizerController.registerOrganizer"

    .line 104
    .line 105
    invoke-direct {v1, p1, v3}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-direct {p0, v0, v1}, Landroid/window/DisplayAreaAppearedInfo;-><init>(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    :goto_1
    return-void

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
