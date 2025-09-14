.class public final synthetic Lcom/android/server/chimera/AbnormalFgsDetector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/chimera/AbnormalFgsDetector$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/chimera/AbnormalFgsDetector$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/chimera/AbnormalFgsDetector$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/chimera/AbnormalFgsDetector$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 5
    check-cast p1, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 10
    iget-object p1, p1, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->processName:Ljava/lang/String;

    .line 12
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :pswitch_0
    iget-object p1, p1, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->processName:Ljava/lang/String;

    .line 19
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :pswitch_1
    iget-object p1, p1, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->processName:Ljava/lang/String;

    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
