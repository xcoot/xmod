.class public final synthetic Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/HexConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget p0, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 6
    check-cast p1, Lcom/android/server/appop/AppOpsService;

    .line 8
    check-cast p2, Landroid/util/ArraySet;

    .line 10
    check-cast p3, Ljava/lang/Integer;

    .line 12
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 15
    move-result p3

    .line 16
    check-cast p4, Ljava/lang/Integer;

    .line 18
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result p4

    .line 22
    check-cast p5, Ljava/lang/String;

    .line 24
    check-cast p6, Ljava/lang/String;

    .line 26
    invoke-virtual/range {p1 .. p6}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void

    .line 30
    :pswitch_0
    move-object v0, p1

    .line 31
    check-cast v0, Lcom/android/server/appop/AppOpsService;

    .line 33
    move-object v1, p2

    .line 34
    check-cast v1, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 36
    check-cast p3, Ljava/lang/Integer;

    .line 38
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 41
    move-result v2

    .line 42
    check-cast p4, Ljava/lang/Integer;

    .line 44
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 47
    move-result v3

    .line 48
    move-object v4, p5

    .line 49
    check-cast v4, Ljava/lang/String;

    .line 51
    move-object v5, p6

    .line 52
    check-cast v5, Ljava/lang/String;

    .line 54
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
