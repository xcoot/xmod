.class public final synthetic Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/TelephonyRegistry;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/TelephonyRegistry;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/TelephonyRegistry;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {p0}, Landroid/telephony/LocationAccessPolicy;->getLocationBypassPackages(Landroid/content/Context;)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
