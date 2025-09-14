.class public final synthetic Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .line 6
    iput-object p2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 8
    iput p3, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda2;->f$2:I

    .line 10
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .line 3
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 5
    iget p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda2;->f$2:I

    .line 7
    iget-object v2, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object v2

    .line 13
    const-string/jumbo v3, "time_12_24"

    .line 16
    invoke-static {v2, v3, v1, p0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 19
    move-result p0

    .line 20
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    move-result-object p0

    .line 24
    new-instance v1, Landroid/content/Intent;

    .line 26
    const-string v2, "android.intent.action.TIME_SET"

    .line 28
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    iget-object v0, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 36
    return-object p0
.end method
