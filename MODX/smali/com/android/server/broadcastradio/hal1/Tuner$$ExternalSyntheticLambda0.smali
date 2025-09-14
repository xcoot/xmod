.class public final synthetic Lcom/android/server/broadcastradio/hal1/Tuner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/broadcastradio/hal1/Tuner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal1/Tuner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal1/Tuner$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/broadcastradio/hal1/Tuner;

    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/Tuner$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/broadcastradio/hal1/Tuner;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->close()V

    .line 6
    return-void
.end method
