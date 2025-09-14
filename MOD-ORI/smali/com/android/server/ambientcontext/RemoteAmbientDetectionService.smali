.class public interface abstract Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public abstract dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
.end method

.method public abstract queryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V
.end method

.method public abstract startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
.end method

.method public abstract stopDetection(Ljava/lang/String;)V
.end method

.method public abstract unbind()V
.end method
