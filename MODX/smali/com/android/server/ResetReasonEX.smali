.class Lcom/android/server/ResetReasonEX;
.super Lcom/android/server/CommonPlatformResetReasonCode;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/ResetReasonCode;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public addSuffix()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "sys_error"

    .line 4
    return-object p0
.end method
