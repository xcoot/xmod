.class public final synthetic Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/inputmethod/InputMethodSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/server/inputmethod/InputMethodSettings;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda13;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    iput p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda13;->f$1:I

    .line 7
    iput p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda13;->f$2:I

    .line 9
    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda13;->f$3:Lcom/android/server/inputmethod/InputMethodSettings;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda13;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 8
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda13;->f$1:I

    .line 10
    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda13;->f$2:I

    .line 12
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda13;->f$3:Lcom/android/server/inputmethod/InputMethodSettings;

    .line 14
    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->canCallerAccessInputMethod(Ljava/lang/String;IILcom/android/server/inputmethod/InputMethodSettings;)Z

    .line 26
    move-result p0

    .line 27
    xor-int/lit8 p0, p0, 0x1

    .line 29
    return p0

    .line 30
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 32
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda13;->f$1:I

    .line 34
    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda13;->f$2:I

    .line 36
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda13;->f$3:Lcom/android/server/inputmethod/InputMethodSettings;

    .line 38
    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->canCallerAccessInputMethod(Ljava/lang/String;IILcom/android/server/inputmethod/InputMethodSettings;)Z

    .line 50
    move-result p0

    .line 51
    xor-int/lit8 p0, p0, 0x1

    .line 53
    return p0

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
