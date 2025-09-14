.class public final synthetic Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    .line 10
    check-cast p1, Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 12
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 16
    invoke-direct {v0}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    .line 22
    move-result v1

    .line 23
    iput v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    .line 25
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    .line 28
    move-result-wide v1

    .line 29
    iput-wide v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->value:J

    .line 31
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    return-void

    .line 35
    :pswitch_0
    check-cast p0, Ljava/util/ArrayList;

    .line 37
    check-cast p1, Ljava/lang/Integer;

    .line 39
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    return-void

    .line 43
    :pswitch_1
    check-cast p0, Ljava/util/ArrayList;

    .line 45
    check-cast p1, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 47
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
