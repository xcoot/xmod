.class public final synthetic Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/ComputerEngine;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ComputerEngine;III)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/ComputerEngine;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda3;->f$1:I

    .line 6
    .line 7
    iput p3, p0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda3;->f$2:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/ComputerEngine;

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda3;->f$1:I

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda3;->f$2:I

    .line 11
    .line 12
    iget-object v2, v0, Lcom/android/server/pm/ComputerEngine;->mGetAppListHelper:Lcom/samsung/android/server/pm/nal/GetAppListHelper;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/pm/nal/GetAppListHelper;->requestGetAppListPermIfNeeded(Landroid/content/Context;II)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/ComputerEngine;

    .line 24
    .line 25
    iget v1, p0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda3;->f$1:I

    .line 26
    .line 27
    iget p0, p0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda3;->f$2:I

    .line 28
    .line 29
    iget-object v2, v0, Lcom/android/server/pm/ComputerEngine;->mGetAppListHelper:Lcom/samsung/android/server/pm/nal/GetAppListHelper;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/pm/nal/GetAppListHelper;->requestGetAppListPermIfNeeded(Landroid/content/Context;II)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
