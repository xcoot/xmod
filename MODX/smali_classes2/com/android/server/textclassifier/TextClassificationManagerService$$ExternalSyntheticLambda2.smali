.class public final synthetic Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/view/textclassifier/TextClassificationSessionId;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;->f$0:Landroid/view/textclassifier/TextClassificationSessionId;

    iput-object p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;->f$0:Landroid/view/textclassifier/TextClassificationSessionId;

    iput-object p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/view/textclassifier/TextClassificationSessionId;I)V
    .locals 0

    .line 3
    iput p3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;->f$0:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;->f$0:Landroid/view/textclassifier/TextClassificationSessionId;

    .line 11
    .line 12
    check-cast p1, Landroid/service/textclassifier/ITextClassifierService;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p0}, Landroid/service/textclassifier/ITextClassifierService;->onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, v0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSessionCache:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationSessionId;->getToken()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p1, p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->remove(Landroid/os/IBinder;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;->f$0:Landroid/view/textclassifier/TextClassificationSessionId;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Landroid/view/textclassifier/SelectionEvent;

    .line 35
    .line 36
    check-cast p1, Landroid/service/textclassifier/ITextClassifierService;

    .line 37
    .line 38
    invoke-interface {p1, v0, p0}, Landroid/service/textclassifier/ITextClassifierService;->onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Landroid/view/textclassifier/TextClassificationContext;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;->f$0:Landroid/view/textclassifier/TextClassificationSessionId;

    .line 47
    .line 48
    check-cast p1, Landroid/service/textclassifier/ITextClassifierService;

    .line 49
    .line 50
    invoke-interface {p1, v0, p0}, Landroid/service/textclassifier/ITextClassifierService;->onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;->f$0:Landroid/view/textclassifier/TextClassificationSessionId;

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p0, Landroid/view/textclassifier/TextClassifierEvent;

    .line 59
    .line 60
    check-cast p1, Landroid/service/textclassifier/ITextClassifierService;

    .line 61
    .line 62
    invoke-interface {p1, v0, p0}, Landroid/service/textclassifier/ITextClassifierService;->onTextClassifierEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
