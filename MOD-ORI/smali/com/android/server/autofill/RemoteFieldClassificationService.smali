.class final Lcom/android/server/autofill/RemoteFieldClassificationService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;


# direct methods
.method public static -$$Nest$mlogFieldClassificationEvent(Lcom/android/server/autofill/RemoteFieldClassificationService;JLcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;ILandroid/service/assist/classification/FieldClassificationResponse;)V
    .locals 2

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    new-instance p0, Lcom/android/server/autofill/FieldClassificationEventLogger;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    iput-object p3, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationEventLogger;->startNewLogForRequest()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    sub-long/2addr v0, p1

    .line 22
    iget-object p1, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 23
    .line 24
    new-instance p2, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda3;

    .line 25
    .line 26
    invoke-direct {p2, v0, v1}, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda3;-><init>(J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 33
    .line 34
    new-instance p2, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda7;

    .line 35
    .line 36
    invoke-direct {p2}, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda7;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 43
    .line 44
    new-instance p2, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    const/4 p3, 0x0

    .line 47
    invoke-direct {p2, p4, p3}, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationEventLogger;->logAndEndEvent()V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :cond_0
    check-cast p3, Lcom/android/server/autofill/Session;

    .line 59
    .line 60
    new-instance p0, Lcom/android/server/autofill/FieldClassificationEventLogger;

    .line 61
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationEventLogger;->startNewLogForRequest()V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    sub-long/2addr v0, p1

    .line 79
    iget-object p1, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 80
    .line 81
    new-instance p2, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda3;

    .line 82
    .line 83
    invoke-direct {p2, v0, v1}, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda3;-><init>(J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 87
    .line 88
    .line 89
    iget p1, p3, Lcom/android/server/autofill/Session;->uid:I

    .line 90
    .line 91
    iget-object p2, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 92
    .line 93
    new-instance v0, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;

    .line 94
    .line 95
    const/4 v1, 0x4

    .line 96
    invoke-direct {v0, p1, v1}, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 100
    .line 101
    .line 102
    iget p1, p3, Lcom/android/server/autofill/Session;->mFillRequestIdSnapshot:I

    .line 103
    .line 104
    add-int/lit8 p1, p1, 0x1

    .line 105
    .line 106
    iget-object p2, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 107
    .line 108
    new-instance v0, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;

    .line 109
    .line 110
    const/4 v1, 0x1

    .line 111
    invoke-direct {v0, p1, v1}, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 115
    .line 116
    .line 117
    sget-object p1, Lcom/android/server/autofill/Session;->sIdCounterForPcc:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    iget-object p2, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 124
    .line 125
    new-instance v0, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;

    .line 126
    .line 127
    const/4 v1, 0x3

    .line 128
    invoke-direct {v0, p1, v1}, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 132
    .line 133
    .line 134
    iget p1, p3, Lcom/android/server/autofill/Session;->id:I

    .line 135
    .line 136
    iget-object p2, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 137
    .line 138
    new-instance v0, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;

    .line 139
    .line 140
    const/4 v1, 0x5

    .line 141
    invoke-direct {v0, p1, v1}, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 145
    .line 146
    .line 147
    if-eqz p5, :cond_1

    .line 148
    .line 149
    invoke-virtual {p5}, Landroid/service/assist/classification/FieldClassificationResponse;->getClassifications()Ljava/util/Set;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    goto :goto_0

    .line 158
    :cond_1
    const/4 p1, -0x1

    .line 159
    :goto_0
    iget-object p2, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 160
    .line 161
    new-instance p5, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;

    .line 162
    .line 163
    const/4 v0, 0x0

    .line 164
    invoke-direct {p5, p4, v0}, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2, p5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 168
    .line 169
    .line 170
    iget-object p2, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 171
    .line 172
    new-instance p4, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;

    .line 173
    .line 174
    const/4 p5, 0x2

    .line 175
    invoke-direct {p4, p1, p5}, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2, p4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationEventLogger;->logAndEndEvent()V

    .line 182
    .line 183
    .line 184
    const/4 p0, -0x2

    .line 185
    iput p0, p3, Lcom/android/server/autofill/Session;->mFillRequestIdSnapshot:I

    .line 186
    .line 187
    :goto_1
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 8

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.service.assist.classification.FieldClassificationService"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    new-instance v7, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    move-object v2, p0

    .line 19
    move-object v3, p1

    .line 20
    move v6, p3

    .line 21
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lcom/android/server/autofill/RemoteFieldClassificationService;->mComponentName:Landroid/content/ComponentName;

    .line 25
    .line 26
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string p3, "About to connect to serviceName: "

    .line 33
    .line 34
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string p2, "AutofillRemoteFieldClassificationService"

    .line 45
    .line 46
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    .line 50
    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public final onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .locals 1

    .line 1
    check-cast p1, Landroid/service/assist/classification/IFieldClassificationService;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :try_start_0
    invoke-interface {p1, p0, p0}, Landroid/service/assist/classification/IFieldClassificationService;->onConnected(ZZ)V

    .line 7
    .line 8
    .line 9
    goto :goto_1

    .line 10
    :catch_0
    move-exception p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p1}, Landroid/service/assist/classification/IFieldClassificationService;->onDisconnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v0, "Exception calling onServiceConnectionStatusChanged("

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p2, "): "

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string p2, "AutofillRemoteFieldClassificationService"

    .line 36
    .line 37
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    :goto_1
    return-void
.end method
