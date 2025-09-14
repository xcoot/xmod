.class public final synthetic Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener$$ExternalSyntheticLambda0;->f$1:I

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;-><init>(IZ)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x4

    .line 24
    invoke-virtual {v0, p0, v1}, Lcom/android/server/power/PowerHistorian;->addRecord(ILcom/android/server/power/PowerHistorian$Record;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;

    .line 29
    .line 30
    iget p0, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener$$ExternalSyntheticLambda0;->f$1:I

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    new-instance v1, Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;-><init>(IZ)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x4

    .line 46
    invoke-virtual {v0, p0, v1}, Lcom/android/server/power/PowerHistorian;->addRecord(ILcom/android/server/power/PowerHistorian$Record;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
