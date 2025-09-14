.class public final synthetic Lcom/android/server/SerialService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/SerialService;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SerialService;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/SerialService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/SerialService;

    .line 6
    iput-object p2, p0, Lcom/android/server/SerialService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/SerialService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/SerialService;

    .line 3
    iget-object p0, p0, Lcom/android/server/SerialService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 5
    invoke-static {v0, p0}, Lcom/android/server/SerialService;->$r8$lambda$890bigx2NlJpRPl5icDsjvKnAIY(Lcom/android/server/SerialService;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
