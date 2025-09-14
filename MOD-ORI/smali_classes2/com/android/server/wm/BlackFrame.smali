.class public final Lcom/android/server/wm/BlackFrame;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

.field public final mInnerRect:Landroid/graphics/Rect;

.field public final mOuterRect:Landroid/graphics/Rect;

.field public final mTransactionFactory:Ljava/util/function/Supplier;


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [Lcom/android/server/wm/BlackFrame$BlackSurface;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/wm/BlackFrame;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 10
    .line 11
    new-instance p1, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {p1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/wm/BlackFrame;->mOuterRect:Landroid/graphics/Rect;

    .line 17
    .line 18
    new-instance p1, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {p1, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/wm/BlackFrame;->mInnerRect:Landroid/graphics/Rect;

    .line 24
    .line 25
    :try_start_0
    iget v4, p3, Landroid/graphics/Rect;->top:I

    .line 26
    .line 27
    iget v6, p4, Landroid/graphics/Rect;->top:I

    .line 28
    .line 29
    if-ge v4, v6, :cond_0

    .line 30
    .line 31
    new-instance p1, Lcom/android/server/wm/BlackFrame$BlackSurface;

    .line 32
    .line 33
    iget v3, p3, Landroid/graphics/Rect;->left:I

    .line 34
    .line 35
    iget v5, p4, Landroid/graphics/Rect;->right:I

    .line 36
    .line 37
    move-object v1, p1

    .line 38
    move-object v2, p2

    .line 39
    move-object v7, p5

    .line 40
    move-object v8, p6

    .line 41
    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Landroid/view/SurfaceControl$Transaction;IIIILcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl;)V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    aput-object p1, v0, v1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    iget v3, p3, Landroid/graphics/Rect;->left:I

    .line 51
    .line 52
    iget v5, p4, Landroid/graphics/Rect;->left:I

    .line 53
    .line 54
    if-ge v3, v5, :cond_1

    .line 55
    .line 56
    new-instance p1, Lcom/android/server/wm/BlackFrame$BlackSurface;

    .line 57
    .line 58
    iget v4, p4, Landroid/graphics/Rect;->top:I

    .line 59
    .line 60
    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    .line 61
    .line 62
    move-object v1, p1

    .line 63
    move-object v2, p2

    .line 64
    move-object v7, p5

    .line 65
    move-object v8, p6

    .line 66
    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Landroid/view/SurfaceControl$Transaction;IIIILcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl;)V

    .line 67
    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    aput-object p1, v0, v1

    .line 71
    .line 72
    :cond_1
    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    .line 73
    .line 74
    iget v4, p4, Landroid/graphics/Rect;->bottom:I

    .line 75
    .line 76
    if-le v6, v4, :cond_2

    .line 77
    .line 78
    new-instance p1, Lcom/android/server/wm/BlackFrame$BlackSurface;

    .line 79
    .line 80
    iget v3, p4, Landroid/graphics/Rect;->left:I

    .line 81
    .line 82
    iget v5, p3, Landroid/graphics/Rect;->right:I

    .line 83
    .line 84
    move-object v1, p1

    .line 85
    move-object v2, p2

    .line 86
    move-object v7, p5

    .line 87
    move-object v8, p6

    .line 88
    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Landroid/view/SurfaceControl$Transaction;IIIILcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl;)V

    .line 89
    .line 90
    .line 91
    const/4 v1, 0x2

    .line 92
    aput-object p1, v0, v1

    .line 93
    .line 94
    :cond_2
    iget v5, p3, Landroid/graphics/Rect;->right:I

    .line 95
    .line 96
    iget v3, p4, Landroid/graphics/Rect;->right:I

    .line 97
    .line 98
    if-le v5, v3, :cond_3

    .line 99
    .line 100
    new-instance p1, Lcom/android/server/wm/BlackFrame$BlackSurface;

    .line 101
    .line 102
    iget v4, p3, Landroid/graphics/Rect;->top:I

    .line 103
    .line 104
    iget v6, p4, Landroid/graphics/Rect;->bottom:I

    .line 105
    .line 106
    move-object v1, p1

    .line 107
    move-object v2, p2

    .line 108
    move-object v7, p5

    .line 109
    move-object v8, p6

    .line 110
    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Landroid/view/SurfaceControl$Transaction;IIIILcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl;)V

    .line 111
    .line 112
    .line 113
    const/4 p2, 0x3

    .line 114
    aput-object p1, v0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .line 116
    :cond_3
    return-void

    .line 117
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 118
    .line 119
    .line 120
    throw p1
.end method


# virtual methods
.method public final kill()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    .line 11
    .line 12
    array-length v3, v2

    .line 13
    if-ge v1, v3, :cond_2

    .line 14
    .line 15
    aget-object v3, v2, v1

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:[Z

    .line 20
    .line 21
    const/4 v5, 0x2

    .line 22
    aget-boolean v4, v4, v5

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    iget-object v3, v3, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    .line 27
    .line 28
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 33
    .line 34
    const/4 v8, 0x0

    .line 35
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    const-wide v5, -0x4e2f2db49a78cc63L    # -9.749105293358207E-69

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    const/4 v7, 0x0

    .line 45
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    aget-object v3, v2, v1

    .line 49
    .line 50
    iget-object v3, v3, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 53
    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    aput-object v3, v2, v1

    .line 57
    .line 58
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 62
    .line 63
    .line 64
    return-void
.end method
