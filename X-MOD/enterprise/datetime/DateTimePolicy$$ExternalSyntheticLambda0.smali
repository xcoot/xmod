.class public final synthetic Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .line 6
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .line 3
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    .line 5
    new-instance v0, Landroid/content/Intent;

    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.intent.action.UPDATE_NTP_PARAMETERS_INTERNAL"

    .line 10
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 16
    return-void
.end method
