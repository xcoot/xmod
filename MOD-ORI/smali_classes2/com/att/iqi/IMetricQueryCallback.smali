.class public interface abstract Lcom/att/iqi/IMetricQueryCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.att.iqi.IMetricQueryCallback"


# virtual methods
.method public abstract onMetricQueried(Lcom/att/iqi/lib/Metric$ID;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
