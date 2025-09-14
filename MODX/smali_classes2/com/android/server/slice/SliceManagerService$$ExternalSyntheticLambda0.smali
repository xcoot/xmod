.class public final synthetic Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/slice/SliceManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/slice/SliceManagerService;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/slice/SliceManagerService;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/slice/SliceManagerService;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda0;->f$1:I

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/android/server/slice/SliceManagerService;->getDefaultHome(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/slice/SliceManagerService;

    .line 16
    .line 17
    iget p0, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda0;->f$1:I

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/slice/SliceManagerService;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :goto_0
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
