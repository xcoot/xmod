.class public final Lcom/android/server/location/eventlog/LocationEventLog$ProviderEnabledEvent;
.super Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mEnabled:Z

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEnabledEvent;->mUserId:I

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEnabledEvent;->mEnabled:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;->mProvider:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " provider [u"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEnabledEvent;->mUserId:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "] "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-boolean p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEnabledEvent;->mEnabled:Z

    .line 27
    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    const-string/jumbo p0, "enabled"

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string/jumbo p0, "disabled"

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method
