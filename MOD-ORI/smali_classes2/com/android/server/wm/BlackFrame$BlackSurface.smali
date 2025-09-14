.class public final Lcom/android/server/wm/BlackFrame$BlackSurface;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final left:I

.field public final surface:Landroid/view/SurfaceControl;

.field public final top:I


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl$Transaction;IIIILcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    .line 5
    .line 6
    iput p3, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    .line 7
    .line 8
    sub-int/2addr p4, p2

    .line 9
    sub-int/2addr p5, p3

    .line 10
    invoke-virtual {p6}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p6

    .line 14
    const-string v0, "BlackSurface"

    .line 15
    .line 16
    invoke-virtual {p6, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object p6

    .line 20
    invoke-virtual {p6}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p6

    .line 24
    invoke-virtual {p6, p7}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object p6

    .line 28
    invoke-virtual {p6, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p6

    .line 32
    invoke-virtual {p6}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 33
    .line 34
    .line 35
    move-result-object p6

    .line 36
    iput-object p6, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    .line 37
    .line 38
    invoke-virtual {p1, p6, p4, p5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 39
    .line 40
    .line 41
    const/high16 p0, 0x3f800000    # 1.0f

    .line 42
    .line 43
    invoke-virtual {p1, p6, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 44
    .line 45
    .line 46
    const p0, 0x1eab90

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p6, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 50
    .line 51
    .line 52
    int-to-float p2, p2

    .line 53
    int-to-float p3, p3

    .line 54
    invoke-virtual {p1, p6, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 58
    .line 59
    .line 60
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:[Z

    .line 61
    .line 62
    const/4 p2, 0x2

    .line 63
    aget-boolean p1, p1, p2

    .line 64
    .line 65
    if-eqz p1, :cond_0

    .line 66
    .line 67
    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    int-to-long p2, p0

    .line 72
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 73
    .line 74
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    const/4 v3, 0x4

    .line 83
    const/4 v4, 0x0

    .line 84
    const-wide v1, -0x29209844fbdeca8fL    # -2.9502577356056196E110

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_0
    return-void
.end method
