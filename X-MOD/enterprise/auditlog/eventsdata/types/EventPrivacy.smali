.class public final Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final privacy:I

.field public redactedMessage:Ljava/lang/String;

.field public userId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->privacy:I

    .line 6
    return-void
.end method

.method public static parseInteger(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/16 v1, -0x2710

    .line 7
    if-eqz v0, :cond_0

    .line 9
    return v1

    .line 10
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 13
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    const-string v0, "EventPrivacy"

    .line 18
    const-string v2, "Failed to parse integer"

    .line 20
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    return v1
.end method
