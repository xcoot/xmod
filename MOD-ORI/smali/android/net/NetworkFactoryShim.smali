.class public interface abstract Landroid/net/NetworkFactoryShim;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getLooper()Landroid/os/Looper;
.end method

.method public abstract getRequestCount()I
.end method

.method public abstract obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
.end method

.method public abstract reevaluateAllRequests()V
.end method

.method public abstract register(Ljava/lang/String;)V
.end method

.method public registerIgnoringScore(Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public abstract setCapabilityFilter(Landroid/net/NetworkCapabilities;)V
.end method

.method public abstract setScoreFilter(I)V
.end method

.method public abstract setScoreFilter(Landroid/net/NetworkScore;)V
.end method
