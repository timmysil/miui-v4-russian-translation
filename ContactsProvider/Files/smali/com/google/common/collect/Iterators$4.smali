.class final Lcom/google/common/collect/Iterators$4;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field du:Ljava/util/Iterator;

.field iterator:Ljava/util/Iterator;

.field final synthetic val$iterable:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/google/common/collect/Iterators$4;->val$iterable:Ljava/lang/Iterable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 376
    invoke-static {}, Lcom/google/common/collect/Iterators;->cd()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Iterators$4;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->val$iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Iterators$4;->iterator:Ljava/util/Iterator;

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$4;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->iterator:Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/collect/Iterators$4;->du:Ljava/util/Iterator;

    .line 390
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->du:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "no calls to next() since last call to remove()"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->b(ZLjava/lang/Object;)V

    .line 395
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->du:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/Iterators$4;->du:Ljava/util/Iterator;

    .line 397
    return-void

    .line 393
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
