.class public final synthetic Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/app/GameManagerService$MyUidObserver;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/app/GameManagerService;I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/server/app/GameManagerService$MyUidObserver;

    .line 10
    iget p0, p0, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;->f$1:I

    .line 12
    check-cast p1, Ljava/lang/String;

    .line 14
    iget-object v0, v0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    .line 16
    sget v1, Lcom/android/server/app/GameManagerService;->$r8$clinit:I

    .line 18
    invoke-virtual {v0, p0, p1}, Lcom/android/server/app/GameManagerService;->isPackageGame(ILjava/lang/String;)Z

    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 25
    check-cast v0, Lcom/android/server/app/GameManagerService;

    .line 27
    iget p0, p0, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;->f$1:I

    .line 29
    check-cast p1, Ljava/lang/String;

    .line 31
    sget v1, Lcom/android/server/app/GameManagerService;->$r8$clinit:I

    .line 33
    invoke-virtual {v0, p0, p1}, Lcom/android/server/app/GameManagerService;->isPackageGame(ILjava/lang/String;)Z

    .line 36
    move-result p0

    .line 37
    return p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
