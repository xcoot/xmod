.class public final synthetic Lcom/android/server/BatteryService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/BatteryService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/BatteryService;

    .line 4
    .line 5
    iput-boolean p2, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda9;->f$1:Z

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda9;->f$2:Ljava/io/PrintWriter;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/BatteryService;

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda9;->f$1:Z

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda9;->f$2:Ljava/io/PrintWriter;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 13
    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget v0, v0, Lcom/android/server/BatteryService;->mSequence:I

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void

    .line 25
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/BatteryService;

    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda9;->f$1:Z

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda9;->f$2:Ljava/io/PrintWriter;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 32
    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    iget v0, v0, Lcom/android/server/BatteryService;->mSequence:I

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
