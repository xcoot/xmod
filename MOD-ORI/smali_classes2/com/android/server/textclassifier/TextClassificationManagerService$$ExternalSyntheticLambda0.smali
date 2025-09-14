.class public final synthetic Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/view/textclassifier/TextClassificationSessionId;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Landroid/service/textclassifier/ITextClassifierCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$0:Landroid/view/textclassifier/TextClassificationSessionId;

    iput-object p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$2:Landroid/service/textclassifier/ITextClassifierCallback;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$0:Landroid/view/textclassifier/TextClassificationSessionId;

    iput-object p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$2:Landroid/service/textclassifier/ITextClassifierCallback;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 1

    .line 3
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$0:Landroid/view/textclassifier/TextClassificationSessionId;

    iput-object p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$2:Landroid/service/textclassifier/ITextClassifierCallback;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 1

    .line 4
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$0:Landroid/view/textclassifier/TextClassificationSessionId;

    iput-object p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$2:Landroid/service/textclassifier/ITextClassifierCallback;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 1

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$0:Landroid/view/textclassifier/TextClassificationSessionId;

    iput-object p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$2:Landroid/service/textclassifier/ITextClassifierCallback;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$0:Landroid/view/textclassifier/TextClassificationSessionId;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Landroid/view/textclassifier/ConversationActions$Request;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$2:Landroid/service/textclassifier/ITextClassifierCallback;

    .line 13
    .line 14
    check-cast p1, Landroid/service/textclassifier/ITextClassifierService;

    .line 15
    .line 16
    new-instance v2, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;

    .line 17
    .line 18
    invoke-direct {v2, p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;-><init>(Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0, v1, v2}, Landroid/service/textclassifier/ITextClassifierService;->onSuggestConversationActions(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$0:Landroid/view/textclassifier/TextClassificationSessionId;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Landroid/view/textclassifier/TextLanguage$Request;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$2:Landroid/service/textclassifier/ITextClassifierCallback;

    .line 32
    .line 33
    check-cast p1, Landroid/service/textclassifier/ITextClassifierService;

    .line 34
    .line 35
    invoke-interface {p1, v0, v1, p0}, Landroid/service/textclassifier/ITextClassifierService;->onDetectLanguage(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$0:Landroid/view/textclassifier/TextClassificationSessionId;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Landroid/view/textclassifier/TextClassification$Request;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$2:Landroid/service/textclassifier/ITextClassifierCallback;

    .line 46
    .line 47
    check-cast p1, Landroid/service/textclassifier/ITextClassifierService;

    .line 48
    .line 49
    new-instance v2, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;

    .line 50
    .line 51
    invoke-direct {v2, p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;-><init>(Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, v0, v1, v2}, Landroid/service/textclassifier/ITextClassifierService;->onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$0:Landroid/view/textclassifier/TextClassificationSessionId;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Landroid/view/textclassifier/TextLinks$Request;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$2:Landroid/service/textclassifier/ITextClassifierCallback;

    .line 65
    .line 66
    check-cast p1, Landroid/service/textclassifier/ITextClassifierService;

    .line 67
    .line 68
    invoke-interface {p1, v0, v1, p0}, Landroid/service/textclassifier/ITextClassifierService;->onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$0:Landroid/view/textclassifier/TextClassificationSessionId;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v1, Landroid/view/textclassifier/TextSelection$Request;

    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;->f$2:Landroid/service/textclassifier/ITextClassifierCallback;

    .line 79
    .line 80
    check-cast p1, Landroid/service/textclassifier/ITextClassifierService;

    .line 81
    .line 82
    new-instance v2, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;

    .line 83
    .line 84
    invoke-direct {v2, p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;-><init>(Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 85
    .line 86
    .line 87
    invoke-interface {p1, v0, v1, v2}, Landroid/service/textclassifier/ITextClassifierService;->onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
