.class public final synthetic Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getId(Z)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget p0, Lcom/android/server/display/LogicalDisplayMapper;->sNextNonDefaultDisplayId:I

    .line 11
    .line 12
    add-int/lit8 p1, p0, 0x1

    .line 13
    .line 14
    sput p1, Lcom/android/server/display/LogicalDisplayMapper;->sNextNonDefaultDisplayId:I

    .line 15
    .line 16
    :goto_0
    return p0

    .line 17
    :pswitch_0
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    sget p0, Lcom/android/server/display/LogicalDisplayMapper;->sNextNonDefaultDisplayId:I

    .line 22
    .line 23
    add-int/lit8 p1, p0, 0x1

    .line 24
    .line 25
    sput p1, Lcom/android/server/display/LogicalDisplayMapper;->sNextNonDefaultDisplayId:I

    .line 26
    .line 27
    :goto_1
    return p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
